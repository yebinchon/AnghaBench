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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  hga_reg_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 

__attribute__((used)) static void FUNC4(unsigned int xoffset, unsigned int yoffset)
{
	unsigned int base;
	unsigned long flags;
	
	base = (yoffset / 8) * 90 + xoffset;
	FUNC1(&hga_reg_lock, flags);
	FUNC3(base, 0x0c);	/* start address */
	FUNC2(&hga_reg_lock, flags);
	FUNC0("hga_pan: base:%d\n", base);
}