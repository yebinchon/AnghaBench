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
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int MAX77802_BUCK4 ; 
 int /*<<< orphan*/  MAX77802_RAMP_RATE_MASK_2BIT ; 
 unsigned int MAX77802_RAMP_RATE_SHIFT_2BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct regulator_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ramp_table_77802_2bit ; 
 int FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev,
					int ramp_delay)
{
	int id = FUNC3(rdev);
	unsigned int ramp_value;

	if (id > MAX77802_BUCK4) {
		FUNC1(&rdev->dev,
			 "%s: regulator: ramp delay not supported\n",
			 rdev->desc->name);
		return -EINVAL;
	}
	ramp_value = FUNC2(rdev, ramp_table_77802_2bit,
				FUNC0(ramp_table_77802_2bit), ramp_delay);

	return FUNC4(rdev->regmap, rdev->desc->enable_reg,
				  MAX77802_RAMP_RATE_MASK_2BIT,
				  ramp_value << MAX77802_RAMP_RATE_SHIFT_2BIT);
}