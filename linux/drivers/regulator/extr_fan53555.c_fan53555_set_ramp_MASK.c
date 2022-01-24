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
struct fan53555_device_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  CTL_SLEW_MASK ; 
 int CTL_SLEW_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FAN53555_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct fan53555_device_info* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* slew_rates ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, int ramp)
{
	struct fan53555_device_info *di = FUNC2(rdev);
	int regval = -1, i;

	for (i = 0; i < FUNC0(slew_rates); i++) {
		if (ramp <= slew_rates[i])
			regval = i;
		else
			break;
	}

	if (regval < 0) {
		FUNC1(di->dev, "unsupported ramp value %d\n", ramp);
		return -EINVAL;
	}

	return FUNC3(rdev->regmap, FAN53555_CONTROL,
				  CTL_SLEW_MASK, regval << CTL_SLEW_SHIFT);
}