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
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  vsel_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_MASK_BUCK_RAMP ; 
 unsigned int BD70528_SIFT_BUCK_RAMP ; 
 unsigned int BUCK_RAMPRATE_125MV ; 
 unsigned int BUCK_RAMPRATE_250MV ; 
 int BUCK_RAMP_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, int ramp_delay)
{
	if (ramp_delay > 0 && ramp_delay <= BUCK_RAMP_MAX) {
		unsigned int ramp_value = BUCK_RAMPRATE_250MV;

		if (ramp_delay <= 125)
			ramp_value = BUCK_RAMPRATE_125MV;

		return FUNC1(rdev->regmap, rdev->desc->vsel_reg,
				  BD70528_MASK_BUCK_RAMP,
				  ramp_value << BD70528_SIFT_BUCK_RAMP);
	}
	FUNC0(&rdev->dev, "%s: ramp_delay: %d not supported\n",
		rdev->desc->name, ramp_delay);
	return -EINVAL;
}