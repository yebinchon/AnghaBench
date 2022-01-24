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
struct wm97xx_batt_pdata {int /*<<< orphan*/  charge_gpio; } ;
struct TYPE_2__ {struct wm97xx_batt_pdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  bat_psy ; 
 int /*<<< orphan*/  bat_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prop ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct wm97xx_batt_pdata *pdata = dev->dev.platform_data;

	if (pdata && FUNC3(pdata->charge_gpio)) {
		FUNC1(FUNC4(pdata->charge_gpio), dev);
		FUNC2(pdata->charge_gpio);
	}
	FUNC0(&bat_work);
	FUNC6(bat_psy);
	FUNC5(prop);
	return 0;
}