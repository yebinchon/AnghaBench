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
struct wm97xx_batt_pdata {unsigned long batt_mult; unsigned long batt_div; int /*<<< orphan*/  batt_aux; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct power_supply {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct wm97xx_batt_pdata* FUNC1 (struct power_supply*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC3(struct power_supply *bat_ps)
{
	struct wm97xx_batt_pdata *pdata = FUNC1(bat_ps);

	return FUNC2(FUNC0(bat_ps->dev.parent),
					pdata->batt_aux) * pdata->batt_mult /
					pdata->batt_div;
}