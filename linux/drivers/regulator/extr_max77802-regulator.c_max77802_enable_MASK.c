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
struct max77802_regulator_prv {int* opmode; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  enable_reg; } ;

/* Variables and functions */
 int MAX77802_OFF_PWRREQ ; 
 int MAX77802_OPMODE_NORMAL ; 
 int FUNC0 (int) ; 
 struct max77802_regulator_prv* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct max77802_regulator_prv *max77802 = FUNC1(rdev);
	int id = FUNC2(rdev);
	int shift = FUNC0(id);

	if (max77802->opmode[id] == MAX77802_OFF_PWRREQ)
		max77802->opmode[id] = MAX77802_OPMODE_NORMAL;

	return FUNC3(rdev->regmap, rdev->desc->enable_reg,
				  rdev->desc->enable_mask,
				  max77802->opmode[id] << shift);
}