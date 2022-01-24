#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct da9052_battery* drv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct da9052_pdata {int use_for_apm; } ;
struct TYPE_10__ {int /*<<< orphan*/  notifier_call; } ;
struct da9052_battery {TYPE_6__* da9052; int /*<<< orphan*/  psy; TYPE_1__ nb; int /*<<< orphan*/  health; int /*<<< orphan*/  status; int /*<<< orphan*/  charger_type; } ;
typedef  int s32 ;
struct TYPE_14__ {struct da9052_pdata* platform_data; } ;
struct TYPE_13__ {TYPE_7__* dev; } ;
struct TYPE_11__ {int use_for_apm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DA9052_NOCHARGER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_HEALTH_UNKNOWN ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_UNKNOWN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da9052_USB_current_notifier ; 
 int /*<<< orphan*/  da9052_bat_irq ; 
 int /*<<< orphan*/ * da9052_bat_irq_bits ; 
 int /*<<< orphan*/ * da9052_bat_irqs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,struct da9052_battery*) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct da9052_battery*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,char*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ) ; 
 struct da9052_battery* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct da9052_battery*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*,struct power_supply_config*) ; 
 TYPE_2__ psy_desc ; 

__attribute__((used)) static s32 FUNC10(struct platform_device *pdev)
{
	struct da9052_pdata *pdata;
	struct da9052_battery *bat;
	struct power_supply_config psy_cfg = {};
	int ret;
	int i;

	bat = FUNC7(&pdev->dev, sizeof(struct da9052_battery),
				GFP_KERNEL);
	if (!bat)
		return -ENOMEM;

	psy_cfg.drv_data = bat;

	bat->da9052 = FUNC6(pdev->dev.parent);
	bat->charger_type = DA9052_NOCHARGER;
	bat->status = POWER_SUPPLY_STATUS_UNKNOWN;
	bat->health = POWER_SUPPLY_HEALTH_UNKNOWN;
	bat->nb.notifier_call = da9052_USB_current_notifier;

	pdata = bat->da9052->dev->platform_data;
	if (pdata != NULL && pdata->use_for_apm)
		psy_desc.use_for_apm = pdata->use_for_apm;
	else
		psy_desc.use_for_apm = 1;

	for (i = 0; i < FUNC0(da9052_bat_irqs); i++) {
		ret = FUNC4(bat->da9052,
				da9052_bat_irq_bits[i], da9052_bat_irqs[i],
				da9052_bat_irq, bat);

		if (ret != 0) {
			FUNC5(bat->da9052->dev,
				"DA9052 failed to request %s IRQ: %d\n",
				da9052_bat_irqs[i], ret);
			goto err;
		}
	}

	bat->psy = FUNC9(&pdev->dev, &psy_desc, &psy_cfg);
	if (FUNC1(bat->psy)) {
		ret = FUNC2(bat->psy);
		goto err;
	}

	FUNC8(pdev, bat);
	return 0;

err:
	while (--i >= 0)
		FUNC3(bat->da9052, da9052_bat_irq_bits[i], bat);

	return ret;
}