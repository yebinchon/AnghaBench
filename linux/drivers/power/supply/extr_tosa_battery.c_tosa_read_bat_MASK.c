#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tosa_bat {scalar_t__ gpio_bat; scalar_t__ adc_bat; unsigned long adc_bat_divider; TYPE_2__* psy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  bat_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC6(struct tosa_bat *bat)
{
	unsigned long value = 0;

	if (bat->gpio_bat < 0 || bat->adc_bat < 0)
		return 0;

	FUNC3(&bat_lock);
	FUNC1(bat->gpio_bat, 1);
	FUNC2(5);
	value = FUNC5(FUNC0(bat->psy->dev.parent),
			bat->adc_bat);
	FUNC1(bat->gpio_bat, 0);
	FUNC4(&bat_lock);

	value = value * 1000000 / bat->adc_bat_divider;

	return value;
}