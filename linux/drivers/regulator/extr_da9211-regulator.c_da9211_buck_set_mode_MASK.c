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
struct da9211 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int DA9211_BUCK_MODE_AUTO ; 
 int DA9211_BUCK_MODE_SLEEP ; 
 int DA9211_BUCK_MODE_SYNC ; 
 scalar_t__ DA9211_REG_BUCKA_CONF ; 
#define  REGULATOR_MODE_FAST 130 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 struct da9211* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
					unsigned int mode)
{
	int id = FUNC1(rdev);
	struct da9211 *chip = FUNC0(rdev);
	int val = 0;

	switch (mode) {
	case REGULATOR_MODE_FAST:
		val = DA9211_BUCK_MODE_SYNC;
		break;
	case REGULATOR_MODE_NORMAL:
		val = DA9211_BUCK_MODE_AUTO;
		break;
	case REGULATOR_MODE_STANDBY:
		val = DA9211_BUCK_MODE_SLEEP;
		break;
	}

	return FUNC2(chip->regmap, DA9211_REG_BUCKA_CONF+id,
					0x03, val);
}