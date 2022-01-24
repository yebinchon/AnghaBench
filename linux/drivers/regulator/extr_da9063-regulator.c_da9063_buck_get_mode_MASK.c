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
struct regulator_dev {int dummy; } ;
struct regmap_field {int dummy; } ;
struct da9063_regulator {struct regmap_field* sleep; struct regmap_field* suspend_sleep; struct regmap_field* suspend; struct regmap_field* mode; } ;

/* Variables and functions */
#define  BUCK_MODE_AUTO 131 
#define  BUCK_MODE_MANUAL 130 
#define  BUCK_MODE_SLEEP 129 
#define  BUCK_MODE_SYNC 128 
 int REGULATOR_MODE_FAST ; 
 int REGULATOR_MODE_NORMAL ; 
 int REGULATOR_MODE_STANDBY ; 
 struct da9063_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regmap_field*,unsigned int*) ; 

__attribute__((used)) static unsigned FUNC2(struct regulator_dev *rdev)
{
	struct da9063_regulator *regl = FUNC0(rdev);
	struct regmap_field *field;
	unsigned int val, mode = 0;
	int ret;

	ret = FUNC1(regl->mode, &val);
	if (ret < 0)
		return ret;

	switch (val) {
	default:
	case BUCK_MODE_MANUAL:
		mode = REGULATOR_MODE_FAST | REGULATOR_MODE_STANDBY;
		/* Sleep flag bit decides the mode */
		break;
	case BUCK_MODE_SLEEP:
		return REGULATOR_MODE_STANDBY;
	case BUCK_MODE_SYNC:
		return REGULATOR_MODE_FAST;
	case BUCK_MODE_AUTO:
		return REGULATOR_MODE_NORMAL;
	}

	/* Detect current regulator state */
	ret = FUNC1(regl->suspend, &val);
	if (ret < 0)
		return 0;

	/* Read regulator mode from proper register, depending on state */
	if (val)
		field = regl->suspend_sleep;
	else
		field = regl->sleep;

	ret = FUNC1(field, &val);
	if (ret < 0)
		return 0;

	if (val)
		mode &= REGULATOR_MODE_STANDBY;
	else
		mode &= REGULATOR_MODE_NORMAL | REGULATOR_MODE_FAST;

	return mode;
}