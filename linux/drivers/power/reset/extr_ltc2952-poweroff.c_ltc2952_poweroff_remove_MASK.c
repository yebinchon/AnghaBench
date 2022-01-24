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
struct platform_device {int dummy; } ;
struct ltc2952_poweroff {int /*<<< orphan*/  panic_notifier; int /*<<< orphan*/  timer_wde; int /*<<< orphan*/  timer_trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 struct ltc2952_poweroff* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/ * pm_power_off ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ltc2952_poweroff *data = FUNC2(pdev);

	pm_power_off = NULL;
	FUNC1(&data->timer_trigger);
	FUNC1(&data->timer_wde);
	FUNC0(&panic_notifier_list,
					 &data->panic_notifier);
	return 0;
}