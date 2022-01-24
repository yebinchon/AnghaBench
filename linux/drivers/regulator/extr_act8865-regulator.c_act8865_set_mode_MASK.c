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
struct regulator_dev {struct regmap* regmap; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int ACT8865_DCDC1_CTRL ; 
 int ACT8865_DCDC2_CTRL ; 
 int ACT8865_DCDC3_CTRL ; 
#define  ACT8865_ID_DCDC1 137 
#define  ACT8865_ID_DCDC2 136 
#define  ACT8865_ID_DCDC3 135 
#define  ACT8865_ID_LDO1 134 
#define  ACT8865_ID_LDO2 133 
#define  ACT8865_ID_LDO3 132 
#define  ACT8865_ID_LDO4 131 
 int ACT8865_LDO1_CTRL ; 
 int ACT8865_LDO2_CTRL ; 
 int ACT8865_LDO3_CTRL ; 
 int ACT8865_LDO4_CTRL ; 
 int FUNC0 (int) ; 
 int EINVAL ; 
#define  REGULATOR_MODE_FAST 130 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regmap*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, unsigned int mode)
{
	struct regmap *regmap = rdev->regmap;
	int id = FUNC1(rdev);
	int reg, val = 0;

	switch (id) {
	case ACT8865_ID_DCDC1:
		reg = ACT8865_DCDC1_CTRL;
		break;
	case ACT8865_ID_DCDC2:
		reg = ACT8865_DCDC2_CTRL;
		break;
	case ACT8865_ID_DCDC3:
		reg = ACT8865_DCDC3_CTRL;
		break;
	case ACT8865_ID_LDO1:
		reg = ACT8865_LDO1_CTRL;
		break;
	case ACT8865_ID_LDO2:
		reg = ACT8865_LDO2_CTRL;
		break;
	case ACT8865_ID_LDO3:
		reg = ACT8865_LDO3_CTRL;
		break;
	case ACT8865_ID_LDO4:
		reg = ACT8865_LDO4_CTRL;
		break;
	default:
		return -EINVAL;
	}

	switch (mode) {
	case REGULATOR_MODE_FAST:
	case REGULATOR_MODE_NORMAL:
		if (id <= ACT8865_ID_DCDC3)
			val = FUNC0(5);
		break;
	case REGULATOR_MODE_STANDBY:
		if (id > ACT8865_ID_DCDC3)
			val = FUNC0(5);
		break;
	default:
		return -EINVAL;
	}

	return FUNC2(regmap, reg, FUNC0(5), val);
}