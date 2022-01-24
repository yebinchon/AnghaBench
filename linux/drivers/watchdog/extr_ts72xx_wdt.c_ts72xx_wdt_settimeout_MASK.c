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
struct watchdog_device {unsigned int timeout; } ;
struct ts72xx_wdt_priv {int /*<<< orphan*/  regval; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS72XX_WDT_CTRL_1SEC ; 
 int /*<<< orphan*/  TS72XX_WDT_CTRL_2SEC ; 
 int /*<<< orphan*/  TS72XX_WDT_CTRL_4SEC ; 
 int /*<<< orphan*/  TS72XX_WDT_CTRL_8SEC ; 
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*) ; 
 scalar_t__ FUNC2 (struct watchdog_device*) ; 
 struct ts72xx_wdt_priv* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd, unsigned int to)
{
	struct ts72xx_wdt_priv *priv = FUNC3(wdd);

	if (to == 1) {
		priv->regval = TS72XX_WDT_CTRL_1SEC;
	} else if (to == 2) {
		priv->regval = TS72XX_WDT_CTRL_2SEC;
	} else if (to <= 4) {
		priv->regval = TS72XX_WDT_CTRL_4SEC;
		to = 4;
	} else {
		priv->regval = TS72XX_WDT_CTRL_8SEC;
		if (to <= 8)
			to = 8;
	}

	wdd->timeout = to;

	if (FUNC2(wdd)) {
		FUNC1(wdd);
		FUNC0(wdd);
	}

	return 0;
}