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
struct max8973_chip {int /*<<< orphan*/  curr_vout_reg; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int MAX8973_VOUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct max8973_chip* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct max8973_chip *max = FUNC1(rdev);
	unsigned int data;
	int ret;

	ret = FUNC2(max->regmap, max->curr_vout_reg, &data);
	if (ret < 0) {
		FUNC0(max->dev, "register %d read failed, err = %d\n",
			max->curr_vout_reg, ret);
		return ret;
	}
	return data & MAX8973_VOUT_MASK;
}