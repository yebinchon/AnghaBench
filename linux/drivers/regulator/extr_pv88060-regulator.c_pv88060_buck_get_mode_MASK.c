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
struct regulator_dev {int /*<<< orphan*/  regmap; } ;
struct pv88060_regulator {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
#define  PV88060_BUCK_MODE_AUTO 130 
 unsigned int PV88060_BUCK_MODE_MASK ; 
#define  PV88060_BUCK_MODE_SLEEP 129 
#define  PV88060_BUCK_MODE_SYNC 128 
 int REGULATOR_MODE_FAST ; 
 int REGULATOR_MODE_NORMAL ; 
 int REGULATOR_MODE_STANDBY ; 
 struct pv88060_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC2(struct regulator_dev *rdev)
{
	struct pv88060_regulator *info = FUNC0(rdev);
	unsigned int data;
	int ret, mode = 0;

	ret = FUNC1(rdev->regmap, info->conf, &data);
	if (ret < 0)
		return ret;

	switch (data & PV88060_BUCK_MODE_MASK) {
	case PV88060_BUCK_MODE_SYNC:
		mode = REGULATOR_MODE_FAST;
		break;
	case PV88060_BUCK_MODE_AUTO:
		mode = REGULATOR_MODE_NORMAL;
		break;
	case PV88060_BUCK_MODE_SLEEP:
		mode = REGULATOR_MODE_STANDBY;
		break;
	}

	return mode;
}