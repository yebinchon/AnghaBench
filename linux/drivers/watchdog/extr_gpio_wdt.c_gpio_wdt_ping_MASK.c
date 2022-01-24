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
struct watchdog_device {int dummy; } ;
struct gpio_wdt_priv {int hw_algo; int state; int /*<<< orphan*/  gpiod; } ;

/* Variables and functions */
#define  HW_ALGO_LEVEL 129 
#define  HW_ALGO_TOGGLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct gpio_wdt_priv* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct gpio_wdt_priv *priv = FUNC2(wdd);

	switch (priv->hw_algo) {
	case HW_ALGO_TOGGLE:
		/* Toggle output pin */
		priv->state = !priv->state;
		FUNC0(priv->gpiod, priv->state);
		break;
	case HW_ALGO_LEVEL:
		/* Pulse */
		FUNC0(priv->gpiod, 1);
		FUNC1(1);
		FUNC0(priv->gpiod, 0);
		break;
	}
	return 0;
}