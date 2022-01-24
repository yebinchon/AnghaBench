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
struct rk808_regulator_data {struct gpio_desc** dvs_gpio; } ;
struct regulator_dev {int dummy; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 struct rk808_regulator_data* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
				       unsigned int old_selector,
				       unsigned int new_selector)
{
	struct rk808_regulator_data *pdata = FUNC0(rdev);
	int id = FUNC1(rdev);
	struct gpio_desc *gpio = pdata->dvs_gpio[id];

	/* if there is no dvs1/2 pin, we don't need wait extra time here. */
	if (!gpio)
		return 0;

	return FUNC2(rdev, old_selector, new_selector);
}