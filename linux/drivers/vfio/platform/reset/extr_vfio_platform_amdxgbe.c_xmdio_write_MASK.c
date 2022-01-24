#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int reg ;

/* Variables and functions */
 int PCS_MMD_SELECT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,void*) ; 

__attribute__((used)) static void FUNC1(void *ioaddr, unsigned int mmd,
			unsigned int reg, unsigned int value)
{
	unsigned int mmd_address;

	mmd_address = (mmd << 16) | ((reg) & 0xffff);
	FUNC0(mmd_address >> 8, ioaddr + (PCS_MMD_SELECT << 2));
	FUNC0(value, ioaddr + ((mmd_address & 0xff) << 2));
}