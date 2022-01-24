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
struct tps65132_reg_pdata {int ena_gpio_state; int /*<<< orphan*/  en_gpiod; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tps65132_regulator* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct tps65132_regulator *tps = FUNC1(rdev);
	int id = FUNC2(rdev);
	struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[id];

	if (!FUNC0(rpdata->en_gpiod))
		return rpdata->ena_gpio_state;

	return 1;
}