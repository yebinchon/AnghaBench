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
struct regulator_dev {int /*<<< orphan*/  regmap; TYPE_1__* desc; } ;
struct cpcap_regulator {int /*<<< orphan*/  assign_mask; int /*<<< orphan*/  assign_reg; } ;
struct TYPE_2__ {int enable_val; } ;

/* Variables and functions */
 int CPCAP_REG_OFF_MODE_SEC ; 
 struct cpcap_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct cpcap_regulator *regulator = FUNC0(rdev);
	int error, ignore;

	error = FUNC3(rdev);
	if (error)
		return error;

	if (rdev->desc->enable_val & CPCAP_REG_OFF_MODE_SEC) {
		error = FUNC1(rdev->regmap, regulator->assign_reg,
					   regulator->assign_mask,
					   regulator->assign_mask);
		if (error)
			ignore = FUNC2(rdev);
	}

	return error;
}