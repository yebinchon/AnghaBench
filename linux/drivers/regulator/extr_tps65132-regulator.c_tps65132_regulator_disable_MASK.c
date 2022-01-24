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
struct tps65132_regulator {struct tps65132_reg_pdata* reg_pdata; } ;
struct tps65132_reg_pdata {int /*<<< orphan*/  act_dis_gpiod; scalar_t__ act_dis_time_us; scalar_t__ ena_gpio_state; int /*<<< orphan*/  en_gpiod; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TPS65132_ACT_DIS_TIME_SLACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct tps65132_regulator* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct tps65132_regulator *tps = FUNC2(rdev);
	int id = FUNC3(rdev);
	struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[id];

	if (!FUNC0(rpdata->en_gpiod)) {
		FUNC1(rpdata->en_gpiod, 0);
		rpdata->ena_gpio_state = 0;
	}

	if (!FUNC0(rpdata->act_dis_gpiod)) {
		FUNC1(rpdata->act_dis_gpiod, 1);
		FUNC4(rpdata->act_dis_time_us, rpdata->act_dis_time_us +
			     TPS65132_ACT_DIS_TIME_SLACK);
		FUNC1(rpdata->act_dis_gpiod, 0);
	}

	return 0;
}