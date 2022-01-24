#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ucb1x00_dev {TYPE_1__* ucb; } ;
struct power_supply_config {TYPE_2__* drv_data; } ;
struct TYPE_6__ {void* psy; int /*<<< orphan*/  work_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COLLIE_GPIO_CO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  bat_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ collie_bat_bu ; 
 int /*<<< orphan*/  collie_bat_bu_desc ; 
 int /*<<< orphan*/  collie_bat_gpio_isr ; 
 TYPE_2__ collie_bat_main ; 
 int /*<<< orphan*/  collie_bat_main_desc ; 
 int /*<<< orphan*/  collie_bat_work ; 
 int /*<<< orphan*/  collie_batt_gpios ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ucb ; 

__attribute__((used)) static int FUNC15(struct ucb1x00_dev *dev)
{
	int ret;
	struct power_supply_config psy_main_cfg = {}, psy_bu_cfg = {};

	if (!FUNC9())
		return -ENODEV;

	ucb = dev->ucb;

	ret = FUNC7(collie_batt_gpios,
				 FUNC0(collie_batt_gpios));
	if (ret)
		return ret;

	FUNC10(&collie_bat_main.work_lock);

	FUNC1(&bat_work, collie_bat_work);

	psy_main_cfg.drv_data = &collie_bat_main;
	collie_bat_main.psy = FUNC11(&dev->ucb->dev,
						    &collie_bat_main_desc,
						    &psy_main_cfg);
	if (FUNC2(collie_bat_main.psy)) {
		ret = FUNC3(collie_bat_main.psy);
		goto err_psy_reg_main;
	}

	psy_bu_cfg.drv_data = &collie_bat_bu;
	collie_bat_bu.psy = FUNC11(&dev->ucb->dev,
						  &collie_bat_bu_desc,
						  &psy_bu_cfg);
	if (FUNC2(collie_bat_bu.psy)) {
		ret = FUNC3(collie_bat_bu.psy);
		goto err_psy_reg_bu;
	}

	ret = FUNC13(FUNC8(COLLIE_GPIO_CO),
				collie_bat_gpio_isr,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				"main full", &collie_bat_main);
	if (ret)
		goto err_irq;

	FUNC5(&ucb->dev, 1);
	FUNC14(&bat_work);

	return 0;

err_irq:
	FUNC12(collie_bat_bu.psy);
err_psy_reg_bu:
	FUNC12(collie_bat_main.psy);
err_psy_reg_main:

	/* see comment in collie_bat_remove */
	FUNC4(&bat_work);
	FUNC6(collie_batt_gpios, FUNC0(collie_batt_gpios));
	return ret;
}