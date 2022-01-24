#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {TYPE_1__* drv_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {void* psy; int /*<<< orphan*/  work_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  TOSA_GPIO_BAT0_CRG ; 
 int /*<<< orphan*/  TOSA_GPIO_BAT1_CRG ; 
 int /*<<< orphan*/  TOSA_GPIO_JACKET_DETECT ; 
 int /*<<< orphan*/  bat_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tosa_bat_bu ; 
 int /*<<< orphan*/  tosa_bat_bu_desc ; 
 int /*<<< orphan*/  tosa_bat_gpio_isr ; 
 int /*<<< orphan*/  tosa_bat_gpios ; 
 TYPE_1__ tosa_bat_jacket ; 
 int /*<<< orphan*/  tosa_bat_jacket_desc ; 
 TYPE_1__ tosa_bat_main ; 
 int /*<<< orphan*/  tosa_bat_main_desc ; 
 int /*<<< orphan*/  tosa_bat_work ; 

__attribute__((used)) static int FUNC15(struct platform_device *dev)
{
	int ret;
	struct power_supply_config main_psy_cfg = {},
				   jacket_psy_cfg = {},
				   bu_psy_cfg = {};

	if (!FUNC9())
		return -ENODEV;

	ret = FUNC7(tosa_bat_gpios, FUNC0(tosa_bat_gpios));
	if (ret)
		return ret;

	FUNC10(&tosa_bat_main.work_lock);
	FUNC10(&tosa_bat_jacket.work_lock);

	FUNC1(&bat_work, tosa_bat_work);

	main_psy_cfg.drv_data = &tosa_bat_main;
	tosa_bat_main.psy = FUNC11(&dev->dev,
						  &tosa_bat_main_desc,
						  &main_psy_cfg);
	if (FUNC2(tosa_bat_main.psy)) {
		ret = FUNC3(tosa_bat_main.psy);
		goto err_psy_reg_main;
	}

	jacket_psy_cfg.drv_data = &tosa_bat_jacket;
	tosa_bat_jacket.psy = FUNC11(&dev->dev,
						    &tosa_bat_jacket_desc,
						    &jacket_psy_cfg);
	if (FUNC2(tosa_bat_jacket.psy)) {
		ret = FUNC3(tosa_bat_jacket.psy);
		goto err_psy_reg_jacket;
	}

	bu_psy_cfg.drv_data = &tosa_bat_bu;
	tosa_bat_bu.psy = FUNC11(&dev->dev, &tosa_bat_bu_desc,
						&bu_psy_cfg);
	if (FUNC2(tosa_bat_bu.psy)) {
		ret = FUNC3(tosa_bat_bu.psy);
		goto err_psy_reg_bu;
	}

	ret = FUNC13(FUNC8(TOSA_GPIO_BAT0_CRG),
				tosa_bat_gpio_isr,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				"main full", &tosa_bat_main);
	if (ret)
		goto err_req_main;

	ret = FUNC13(FUNC8(TOSA_GPIO_BAT1_CRG),
				tosa_bat_gpio_isr,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				"jacket full", &tosa_bat_jacket);
	if (ret)
		goto err_req_jacket;

	ret = FUNC13(FUNC8(TOSA_GPIO_JACKET_DETECT),
				tosa_bat_gpio_isr,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				"jacket detect", &tosa_bat_jacket);
	if (!ret) {
		FUNC14(&bat_work);
		return 0;
	}

	FUNC5(FUNC8(TOSA_GPIO_BAT1_CRG), &tosa_bat_jacket);
err_req_jacket:
	FUNC5(FUNC8(TOSA_GPIO_BAT0_CRG), &tosa_bat_main);
err_req_main:
	FUNC12(tosa_bat_bu.psy);
err_psy_reg_bu:
	FUNC12(tosa_bat_jacket.psy);
err_psy_reg_jacket:
	FUNC12(tosa_bat_main.psy);
err_psy_reg_main:

	/* see comment in tosa_bat_remove */
	FUNC4(&bat_work);

	FUNC6(tosa_bat_gpios, FUNC0(tosa_bat_gpios));
	return ret;
}