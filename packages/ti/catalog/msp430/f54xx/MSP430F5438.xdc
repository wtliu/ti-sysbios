/* 
 *  Copyright (c) 2008 Texas Instruments and others.
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  which accompanies this distribution, and is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 * 
 *  Contributors:
 *      Texas Instruments - initial implementation
 * 
 * */

/*
 *  ======== MSP430F5438.xdc ========
 *
 */

/*!
 *  ======== MSP430F5438 ========
 *  MSP430F5438 CPU definition
 */
metaonly module MSP430F5438 inherits IMSP430F54xx
{
instance:
    override config string   cpuCoreRevision = "1.0";

    /*!
     *  ======== memMap ========
     *  The default memory map for this device
     */
    config xdc.platform.IPlatform.Memory memMap[string]  = [

        ["RAM", {
            comment:    "Data RAM",
            name:       "RAM",
            base:       0x1C00,
            len:        0x4000,
            space:      "code/data",
            access:     "RWX"
        }],

        ["FLASH", {
            comment:    "Program FLASH",
            name:       "FLASH",
            base:       0x5C00,
            len:        0xA380,
            space:      "code",
            access:     "RWX"
        }],

        ["FLASH2", {
            comment:    "Extended Program FLASH",
            name:       "FLASH2",
            base:       0x10000,
            len:        0x35C00,
            space:      "code",
            access:     "RWX"
        }],

    ];
};
/*
 *  @(#) ti.catalog.msp430.f54xx; 1, 0, 0,; 12-4-2015 21:40:09; /db/ztree/library/trees/platform/platform-q16/src/
 */
