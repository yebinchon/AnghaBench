#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct regulator_dev {int dummy; } ;
struct as3722_regulators {int /*<<< orphan*/  dev; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;
struct TYPE_2__ {size_t mode_mask; int /*<<< orphan*/  control_reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
#define  REGULATOR_MODE_FAST 129 
#define  REGULATOR_MODE_NORMAL 128 
 TYPE_1__* as3722_reg_lookup ; 
 int FUNC0 (struct as3722*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct as3722_regulators* FUNC2 (struct regulator_dev*) ; 
 size_t FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
		unsigned int mode)
{
	struct as3722_regulators *as3722_regs = FUNC2(rdev);
	struct as3722 *as3722 = as3722_regs->as3722;
	u8 id = FUNC3(rdev);
	u8 val = 0;
	int ret;

	if (!as3722_reg_lookup[id].control_reg)
		return -ERANGE;

	switch (mode) {
	case REGULATOR_MODE_FAST:
		val = as3722_reg_lookup[id].mode_mask;
	case REGULATOR_MODE_NORMAL: /* fall down */
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC0(as3722, as3722_reg_lookup[id].control_reg,
			as3722_reg_lookup[id].mode_mask, val);
	if (ret < 0) {
		FUNC1(as3722_regs->dev, "Reg 0x%02x update failed: %d\n",
			as3722_reg_lookup[id].control_reg, ret);
		return ret;
	}
	return ret;
}