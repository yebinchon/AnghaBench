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
struct regulator_dev {int /*<<< orphan*/  dev; TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  vsel_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_PWM_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FPWM_MODE ; 
 int /*<<< orphan*/  PWM_MODE_MSK ; 
#define  REGULATOR_MODE_FAST 129 
#define  REGULATOR_MODE_NORMAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, unsigned int mode)
{
	switch (mode) {
	case REGULATOR_MODE_FAST:
		return FUNC1(rdev->regmap, rdev->desc->vsel_reg,
					  PWM_MODE_MSK, FPWM_MODE);
	case REGULATOR_MODE_NORMAL:
		return FUNC1(rdev->regmap, rdev->desc->vsel_reg,
					  PWM_MODE_MSK, AUTO_PWM_MODE);
	default:
		FUNC0(&rdev->dev, "do not support this mode\n");
		return -EINVAL;
	}

	return 0;
}