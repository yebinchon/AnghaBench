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
struct power_supply_config {int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; int /*<<< orphan*/  attr_grp; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lp8788_charger {void* charger; void* battery; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EPERM ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  battery_supplied_to ; 
 int /*<<< orphan*/  lp8788_charger_sysfs_groups ; 
 int /*<<< orphan*/  lp8788_psy_battery_desc ; 
 int /*<<< orphan*/  lp8788_psy_charger_desc ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				struct lp8788_charger *pchg)
{
	struct power_supply_config charger_cfg = {};

	charger_cfg.attr_grp = lp8788_charger_sysfs_groups;
	charger_cfg.supplied_to = battery_supplied_to;
	charger_cfg.num_supplicants = FUNC0(battery_supplied_to);

	pchg->charger = FUNC2(&pdev->dev,
					      &lp8788_psy_charger_desc,
					      &charger_cfg);
	if (FUNC1(pchg->charger))
		return -EPERM;

	pchg->battery = FUNC2(&pdev->dev,
					      &lp8788_psy_battery_desc, NULL);
	if (FUNC1(pchg->battery)) {
		FUNC3(pchg->charger);
		return -EPERM;
	}

	return 0;
}