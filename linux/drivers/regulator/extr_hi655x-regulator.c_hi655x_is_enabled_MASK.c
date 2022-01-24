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
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  regmap; } ;
struct hi655x_regulator {int /*<<< orphan*/  status_reg; } ;
struct TYPE_2__ {unsigned int enable_mask; } ;

/* Variables and functions */
 struct hi655x_regulator* FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	unsigned int value = 0;
	struct hi655x_regulator *regulator = FUNC0(rdev);

	FUNC1(rdev->regmap, regulator->status_reg, &value);
	return (value & rdev->desc->enable_mask);
}