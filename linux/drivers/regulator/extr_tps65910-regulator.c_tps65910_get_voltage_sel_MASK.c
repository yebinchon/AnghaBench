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
 int BBCH_BBSEL_MASK ; 
 int BBCH_BBSEL_SHIFT ; 
 int EINVAL ; 
 int LDO_SEL_MASK ; 
 int LDO_SEL_SHIFT ; 
#define  TPS65910_REG_VAUX1 137 
#define  TPS65910_REG_VAUX2 136 
#define  TPS65910_REG_VAUX33 135 
#define  TPS65910_REG_VBB 134 
#define  TPS65910_REG_VDAC 133 
#define  TPS65910_REG_VDIG1 132 
#define  TPS65910_REG_VDIG2 131 
#define  TPS65910_REG_VIO 130 
#define  TPS65910_REG_VMMC 129 
#define  TPS65910_REG_VPLL 128 
 struct tps65910_reg* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *dev)
{
	struct tps65910_reg *pmic = FUNC0(dev);
	int ret, reg, value, id = FUNC1(dev);

	reg = pmic->get_ctrl_reg(id);
	if (reg < 0)
		return reg;

	ret = FUNC3(pmic->mfd, reg, &value);
	if (ret < 0)
		return ret;

	switch (id) {
	case TPS65910_REG_VIO:
	case TPS65910_REG_VDIG1:
	case TPS65910_REG_VDIG2:
	case TPS65910_REG_VPLL:
	case TPS65910_REG_VDAC:
	case TPS65910_REG_VAUX1:
	case TPS65910_REG_VAUX2:
	case TPS65910_REG_VAUX33:
	case TPS65910_REG_VMMC:
		value &= LDO_SEL_MASK;
		value >>= LDO_SEL_SHIFT;
		break;
	case TPS65910_REG_VBB:
		value &= BBCH_BBSEL_MASK;
		value >>= BBCH_BBSEL_SHIFT;
		break;
	default:
		return -EINVAL;
	}

	return value;
}