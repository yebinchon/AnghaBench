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
struct watchdog_device {int /*<<< orphan*/  status; } ;
struct gpio_wdt_priv {int /*<<< orphan*/  always_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gpio_wdt_priv* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct gpio_wdt_priv *priv = FUNC2(wdd);

	if (!priv->always_running) {
		FUNC0(priv);
	} else {
		FUNC1(WDOG_HW_RUNNING, &wdd->status);
	}

	return 0;
}