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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ltc2952_poweroff {int /*<<< orphan*/ * gpio_trigger; int /*<<< orphan*/ * gpio_kill; int /*<<< orphan*/ * gpio_watchdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct ltc2952_poweroff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ltc2952_poweroff*) ; 
 int /*<<< orphan*/  ltc2952_poweroff_handler ; 
 int /*<<< orphan*/  FUNC11 (struct ltc2952_poweroff*) ; 
 struct ltc2952_poweroff* FUNC12 (struct platform_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int ret;
	struct ltc2952_poweroff *data = FUNC12(pdev);

	FUNC10(data);

	data->gpio_watchdog = FUNC5(&pdev->dev, "watchdog",
					     GPIOD_OUT_LOW);
	if (FUNC0(data->gpio_watchdog)) {
		ret = FUNC1(data->gpio_watchdog);
		FUNC2(&pdev->dev, "unable to claim gpio \"watchdog\"\n");
		return ret;
	}

	data->gpio_kill = FUNC5(&pdev->dev, "kill", GPIOD_OUT_LOW);
	if (FUNC0(data->gpio_kill)) {
		ret = FUNC1(data->gpio_kill);
		FUNC2(&pdev->dev, "unable to claim gpio \"kill\"\n");
		return ret;
	}

	data->gpio_trigger = FUNC6(&pdev->dev, "trigger",
						     GPIOD_IN);
	if (FUNC0(data->gpio_trigger)) {
		/*
		 * It's not a problem if the trigger gpio isn't available, but
		 * it is worth a warning if its use was defined in the device
		 * tree.
		 */
		FUNC2(&pdev->dev, "unable to claim gpio \"trigger\"\n");
		data->gpio_trigger = NULL;
	}

	if (FUNC8(&pdev->dev, FUNC9(data->gpio_trigger),
			     ltc2952_poweroff_handler,
			     (IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING),
			     "ltc2952-poweroff",
			     data)) {
		/*
		 * Some things may have happened:
		 * - No trigger input was defined
		 * - Claiming the GPIO failed
		 * - We could not map to an IRQ
		 * - We couldn't register an interrupt handler
		 *
		 * None of these really are problems, but all of them
		 * disqualify the push button from controlling the power.
		 *
		 * It is therefore important to note that if the ltc2952
		 * detects a button press for long enough, it will still start
		 * its own powerdown window and cut the power on us if we don't
		 * start the watchdog trigger.
		 */
		if (data->gpio_trigger) {
			FUNC4(&pdev->dev,
				 "unable to configure the trigger interrupt\n");
			FUNC7(&pdev->dev, data->gpio_trigger);
			data->gpio_trigger = NULL;
		}
		FUNC3(&pdev->dev,
			 "power down trigger input will not be used\n");
		FUNC11(data);
	}

	return 0;
}