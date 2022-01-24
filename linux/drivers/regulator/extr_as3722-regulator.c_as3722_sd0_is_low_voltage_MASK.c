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
struct as3722_regulators {int /*<<< orphan*/  dev; int /*<<< orphan*/  as3722; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS3722_FUSE7_REG ; 
 unsigned int AS3722_FUSE7_SD0_LOW_VOLTAGE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC2(struct as3722_regulators *as3722_regs)
{
	int err;
	unsigned val;

	err = FUNC0(as3722_regs->as3722, AS3722_FUSE7_REG, &val);
	if (err < 0) {
		FUNC1(as3722_regs->dev, "Reg 0x%02x read failed: %d\n",
			AS3722_FUSE7_REG, err);
		return false;
	}
	if (val & AS3722_FUSE7_SD0_LOW_VOLTAGE)
		return true;
	return false;
}