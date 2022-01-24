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
struct tps65910_reg {int (* get_ctrl_reg ) (int) ;int /*<<< orphan*/  mfd; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBCH_BBSEL_MASK ; 
 unsigned int BBCH_BBSEL_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  LDO1_SEL_MASK ; 
 int /*<<< orphan*/  LDO3_SEL_MASK ; 
 int /*<<< orphan*/  LDO_SEL_MASK ; 
 unsigned int LDO_SEL_SHIFT ; 
#define  TPS65910_REG_VBB 137 
#define  TPS65910_REG_VIO 136 
#define  TPS65911_REG_LDO1 135 
#define  TPS65911_REG_LDO2 134 
#define  TPS65911_REG_LDO3 133 
#define  TPS65911_REG_LDO4 132 
#define  TPS65911_REG_LDO5 131 
#define  TPS65911_REG_LDO6 130 
#define  TPS65911_REG_LDO7 129 
#define  TPS65911_REG_LDO8 128 
 struct tps65910_reg* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *dev,
				    unsigned selector)
{
	struct tps65910_reg *pmic = FUNC0(dev);
	int reg, id = FUNC1(dev);

	reg = pmic->get_ctrl_reg(id);
	if (reg < 0)
		return reg;

	switch (id) {
	case TPS65911_REG_LDO1:
	case TPS65911_REG_LDO2:
	case TPS65911_REG_LDO4:
		return FUNC3(pmic->mfd, reg, LDO1_SEL_MASK,
						selector << LDO_SEL_SHIFT);
	case TPS65911_REG_LDO3:
	case TPS65911_REG_LDO5:
	case TPS65911_REG_LDO6:
	case TPS65911_REG_LDO7:
	case TPS65911_REG_LDO8:
		return FUNC3(pmic->mfd, reg, LDO3_SEL_MASK,
						selector << LDO_SEL_SHIFT);
	case TPS65910_REG_VIO:
		return FUNC3(pmic->mfd, reg, LDO_SEL_MASK,
						selector << LDO_SEL_SHIFT);
	case TPS65910_REG_VBB:
		return FUNC3(pmic->mfd, reg, BBCH_BBSEL_MASK,
						selector << BBCH_BBSEL_SHIFT);
	}

	return -EINVAL;
}