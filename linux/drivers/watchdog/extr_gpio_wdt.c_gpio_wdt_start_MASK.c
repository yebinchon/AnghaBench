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
struct gpio_wdt_priv {scalar_t__ state; int /*<<< orphan*/  gpiod; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gpio_wdt_priv* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct gpio_wdt_priv *priv = FUNC3(wdd);

	priv->state = 0;
	FUNC1(priv->gpiod, priv->state);

	FUNC2(WDOG_HW_RUNNING, &wdd->status);

	return FUNC0(wdd);
}