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
struct regulator_dev {TYPE_1__* desc; } ;
struct ltc3589 {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  vsel_mask; scalar_t__ vsel_reg; } ;

/* Variables and functions */
 struct ltc3589* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct regulator_dev*,int,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, int uV)
{
	struct ltc3589 *ltc3589 = FUNC0(rdev);
	int sel;

	sel = FUNC2(rdev, uV, uV);
	if (sel < 0)
		return sel;

	/* DTV2 register follows right after the corresponding DTV1 register */
	return FUNC1(ltc3589->regmap, rdev->desc->vsel_reg + 1,
				  rdev->desc->vsel_mask, sel);
}