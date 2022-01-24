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
 int LDO_ST_MODE_BIT ; 
 int LDO_ST_ON_BIT ; 
 unsigned int REGULATOR_MODE_IDLE ; 
 unsigned int REGULATOR_MODE_NORMAL ; 
 unsigned int REGULATOR_MODE_STANDBY ; 
 struct tps65910_reg* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static unsigned int FUNC4(struct regulator_dev *dev)
{
	struct tps65910_reg *pmic = FUNC0(dev);
	int ret, reg, value, id = FUNC1(dev);

	reg = pmic->get_ctrl_reg(id);
	if (reg < 0)
		return reg;

	ret = FUNC3(pmic->mfd, reg, &value);
	if (ret < 0)
		return ret;

	if (!(value & LDO_ST_ON_BIT))
		return REGULATOR_MODE_STANDBY;
	else if (value & LDO_ST_MODE_BIT)
		return REGULATOR_MODE_IDLE;
	else
		return REGULATOR_MODE_NORMAL;
}