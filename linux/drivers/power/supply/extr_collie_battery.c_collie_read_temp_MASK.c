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
struct collie_bat {scalar_t__ gpio_temp; unsigned long adc_temp_divider; int /*<<< orphan*/  adc_temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_SYNC ; 
 int /*<<< orphan*/  bat_lock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ucb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC7(struct collie_bat *bat)
{
	unsigned long value = 0;
	if (bat->gpio_temp < 0 || bat->adc_temp < 0)
		return 0;

	FUNC2(&bat_lock);
	FUNC0(bat->gpio_temp, 1);
	FUNC1(5);
	FUNC5(ucb);
	value = FUNC6(ucb, bat->adc_temp, UCB_SYNC);
	FUNC4(ucb);
	FUNC0(bat->gpio_temp, 0);
	FUNC3(&bat_lock);

	value = value * 10000 / bat->adc_temp_divider;

	return value;
}