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
struct tps65910_reg {int (* get_ctrl_reg ) (int) ;struct tps65910* mfd; } ;
struct tps65910 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int LDO_ST_MODE_BIT ; 
 int LDO_ST_ON_BIT ; 
#define  REGULATOR_MODE_IDLE 130 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 struct tps65910_reg* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct tps65910*,int,int) ; 
 int FUNC4 (struct tps65910*,int,int) ; 
 int FUNC5 (struct tps65910*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *dev, unsigned int mode)
{
	struct tps65910_reg *pmic = FUNC0(dev);
	struct tps65910 *mfd = pmic->mfd;
	int reg, value, id = FUNC1(dev);

	reg = pmic->get_ctrl_reg(id);
	if (reg < 0)
		return reg;

	switch (mode) {
	case REGULATOR_MODE_NORMAL:
		return FUNC5(pmic->mfd, reg,
						LDO_ST_MODE_BIT | LDO_ST_ON_BIT,
						LDO_ST_ON_BIT);
	case REGULATOR_MODE_IDLE:
		value = LDO_ST_ON_BIT | LDO_ST_MODE_BIT;
		return FUNC4(mfd, reg, value);
	case REGULATOR_MODE_STANDBY:
		return FUNC3(mfd, reg, LDO_ST_ON_BIT);
	}

	return -EINVAL;
}