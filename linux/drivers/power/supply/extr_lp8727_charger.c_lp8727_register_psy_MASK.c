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
struct power_supply_config {int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; } ;
struct lp8727_psy {void* ac; void* usb; void* batt; } ;
struct lp8727_chg {int /*<<< orphan*/  dev; struct lp8727_psy* psy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  battery_supplied_to ; 
 struct lp8727_psy* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lp8727_ac_desc ; 
 int /*<<< orphan*/  lp8727_batt_desc ; 
 int /*<<< orphan*/  lp8727_usb_desc ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct lp8727_chg *pchg)
{
	struct power_supply_config psy_cfg = {}; /* Only for ac and usb */
	struct lp8727_psy *psy;

	psy = FUNC2(pchg->dev, sizeof(*psy), GFP_KERNEL);
	if (!psy)
		return -ENOMEM;

	pchg->psy = psy;

	psy_cfg.supplied_to = battery_supplied_to;
	psy_cfg.num_supplicants = FUNC0(battery_supplied_to);

	psy->ac = FUNC3(pchg->dev, &lp8727_ac_desc, &psy_cfg);
	if (FUNC1(psy->ac))
		goto err_psy_ac;

	psy->usb = FUNC3(pchg->dev, &lp8727_usb_desc,
					 &psy_cfg);
	if (FUNC1(psy->usb))
		goto err_psy_usb;

	psy->batt = FUNC3(pchg->dev, &lp8727_batt_desc, NULL);
	if (FUNC1(psy->batt))
		goto err_psy_batt;

	return 0;

err_psy_batt:
	FUNC4(psy->usb);
err_psy_usb:
	FUNC4(psy->ac);
err_psy_ac:
	return -EPERM;
}