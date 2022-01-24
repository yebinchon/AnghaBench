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
struct tps65132_regulator {int /*<<< orphan*/  dev; struct tps65132_reg_pdata* reg_pdata; } ;
struct tps65132_reg_pdata {int ena_gpio_state; int /*<<< orphan*/  en_gpiod; } ;
struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {scalar_t__ active_discharge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REGULATOR_ACTIVE_DISCHARGE_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct tps65132_regulator* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (struct regulator_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *rdev)
{
	struct tps65132_regulator *tps = FUNC3(rdev);
	int id = FUNC4(rdev);
	struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[id];
	int ret;

	if (!FUNC0(rpdata->en_gpiod)) {
		FUNC2(rpdata->en_gpiod, 1);
		rpdata->ena_gpio_state = 1;
	}

	/* Hardware automatically enable discharge bit in enable */
	if (rdev->constraints->active_discharge ==
			REGULATOR_ACTIVE_DISCHARGE_DISABLE) {
		ret = FUNC5(rdev, false);
		if (ret < 0) {
			FUNC1(tps->dev, "Failed to disable active discharge: %d\n",
				ret);
			return ret;
		}
	}

	return 0;
}