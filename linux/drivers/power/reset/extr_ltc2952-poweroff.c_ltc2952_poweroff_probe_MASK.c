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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct ltc2952_poweroff {TYPE_1__ panic_notifier; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ltc2952_poweroff* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct ltc2952_poweroff* ltc2952_data ; 
 int FUNC4 (struct platform_device*) ; 
 scalar_t__ ltc2952_poweroff_kill ; 
 int /*<<< orphan*/  ltc2952_poweroff_notify_panic ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct ltc2952_poweroff*) ; 
 scalar_t__ pm_power_off ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int ret;
	struct ltc2952_poweroff *data;

	if (pm_power_off) {
		FUNC1(&pdev->dev, "pm_power_off already registered");
		return -EBUSY;
	}

	data = FUNC3(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->dev = &pdev->dev;
	FUNC5(pdev, data);

	ret = FUNC4(pdev);
	if (ret)
		return ret;

	/* TODO: remove ltc2952_data */
	ltc2952_data = data;
	pm_power_off = ltc2952_poweroff_kill;

	data->panic_notifier.notifier_call = ltc2952_poweroff_notify_panic;
	FUNC0(&panic_notifier_list,
				       &data->panic_notifier);
	FUNC2(&pdev->dev, "probe successful\n");

	return 0;
}