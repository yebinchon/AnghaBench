#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_20__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct power_supply_config {int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; } ;
struct pm2xxx_platform_data {scalar_t__ battery; TYPE_4__* wall_charger; } ;
struct TYPE_31__ {int /*<<< orphan*/ * update_curr; int /*<<< orphan*/ * kick_wd; int /*<<< orphan*/ * enable; } ;
struct TYPE_32__ {int enabled; int external; TYPE_7__* psy; int /*<<< orphan*/  wdt_refresh; void* max_out_curr; void* max_out_volt; TYPE_5__ ops; } ;
struct TYPE_26__ {int charger_connected; } ;
struct TYPE_25__ {void** properties; int num_properties; int /*<<< orphan*/  get_property; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_29__ {struct i2c_device_id* pm2xxx_id; struct i2c_client* pm2xxx_i2c; } ;
struct pm2xxx_charger {int ac_conn; int /*<<< orphan*/ * charger_wq; TYPE_7__* regu; TYPE_6__ ac_chg; TYPE_4__* pdata; int /*<<< orphan*/  lpn_pin; TYPE_1__ ac; TYPE_9__* dev; int /*<<< orphan*/  lock; TYPE_13__ ac_chg_desc; int /*<<< orphan*/  check_hw_failure_work; int /*<<< orphan*/  check_main_thermal_prot_work; int /*<<< orphan*/  ac_work; TYPE_3__ config; scalar_t__ bat; int /*<<< orphan*/ * pm2_int; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_34__ {struct pm2xxx_platform_data* platform_data; } ;
struct i2c_client {int /*<<< orphan*/  adapter; TYPE_9__ dev; } ;
struct TYPE_28__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_33__ {TYPE_2__ dev; } ;
struct TYPE_30__ {int /*<<< orphan*/  gpio_irq_number; int /*<<< orphan*/  lpn_gpio; int /*<<< orphan*/  irq_type; int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; int /*<<< orphan*/  label; } ;
struct TYPE_27__ {int /*<<< orphan*/  name; int /*<<< orphan*/  isr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_MAIN_CH_DET ; 
 int /*<<< orphan*/  AB8500_POW_KEY_1_ON ; 
 int FUNC0 (void**) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  PM2XXX_AUTOSUSPEND_DELAY ; 
 int PM2XXX_NUM_INT_REG ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_MAINS ; 
 int FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  WD_KICK_INTERVAL ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct pm2xxx_charger*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct i2c_client*,struct pm2xxx_charger*) ; 
 int /*<<< orphan*/  FUNC20 (struct pm2xxx_charger*) ; 
 struct pm2xxx_charger* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pm2xxx_charger_ac_en ; 
 int /*<<< orphan*/  pm2xxx_charger_ac_get_property ; 
 void** pm2xxx_charger_ac_props ; 
 int /*<<< orphan*/  pm2xxx_charger_ac_work ; 
 int /*<<< orphan*/  pm2xxx_charger_check_hw_failure_work ; 
 int /*<<< orphan*/  pm2xxx_charger_check_main_thermal_prot_work ; 
 void** pm2xxx_charger_current_map ; 
 int FUNC23 (struct pm2xxx_charger*,scalar_t__*) ; 
 TYPE_20__* pm2xxx_charger_irq ; 
 int /*<<< orphan*/  pm2xxx_charger_update_charger_current ; 
 void** pm2xxx_charger_voltage_map ; 
 int /*<<< orphan*/  pm2xxx_charger_watchdog_kick ; 
 int /*<<< orphan*/  pm2xxx_int ; 
 int /*<<< orphan*/ * pm2xxx_interrupt_registers ; 
 int /*<<< orphan*/  FUNC24 (struct pm2xxx_charger*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_9__*) ; 
 int FUNC27 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_7__*) ; 
 TYPE_7__* FUNC31 (TYPE_9__*,TYPE_13__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_7__*) ; 
 TYPE_7__* FUNC33 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_7__*) ; 
 int FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pm2xxx_charger*) ; 
 int /*<<< orphan*/  FUNC36 (struct pm2xxx_charger*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC38(struct i2c_client *i2c_client,
		const struct i2c_device_id *id)
{
	struct pm2xxx_platform_data *pl_data = i2c_client->dev.platform_data;
	struct power_supply_config psy_cfg = {};
	struct pm2xxx_charger *pm2;
	int ret = 0;
	u8 val;
	int i;

	if (!pl_data) {
		FUNC8(&i2c_client->dev, "No platform data supplied\n");
		return -EINVAL;
	}

	pm2 = FUNC21(sizeof(struct pm2xxx_charger), GFP_KERNEL);
	if (!pm2) {
		FUNC8(&i2c_client->dev, "pm2xxx_charger allocation failed\n");
		return -ENOMEM;
	}

	/* get parent data */
	pm2->dev = &i2c_client->dev;

	pm2->pm2_int = &pm2xxx_int;

	/* get charger spcific platform data */
	if (!pl_data->wall_charger) {
		FUNC8(pm2->dev, "no charger platform data supplied\n");
		ret = -EINVAL;
		goto free_device_info;
	}

	pm2->pdata = pl_data->wall_charger;

	/* get battery specific platform data */
	if (!pl_data->battery) {
		FUNC8(pm2->dev, "no battery platform data supplied\n");
		ret = -EINVAL;
		goto free_device_info;
	}

	pm2->bat = pl_data->battery;

	if (!FUNC18(i2c_client->adapter,
			I2C_FUNC_SMBUS_BYTE_DATA |
			I2C_FUNC_SMBUS_READ_WORD_DATA)) {
		ret = -ENODEV;
		FUNC9(pm2->dev, "pm2301 i2c_check_functionality failed\n");
		goto free_device_info;
	}

	pm2->config.pm2xxx_i2c = i2c_client;
	pm2->config.pm2xxx_id = (struct i2c_device_id *) id;
	FUNC19(i2c_client, pm2);

	/* AC supply */
	/* power_supply base class */
	pm2->ac_chg_desc.name = pm2->pdata->label;
	pm2->ac_chg_desc.type = POWER_SUPPLY_TYPE_MAINS;
	pm2->ac_chg_desc.properties = pm2xxx_charger_ac_props;
	pm2->ac_chg_desc.num_properties = FUNC0(pm2xxx_charger_ac_props);
	pm2->ac_chg_desc.get_property = pm2xxx_charger_ac_get_property;

	psy_cfg.supplied_to = pm2->pdata->supplied_to;
	psy_cfg.num_supplicants = pm2->pdata->num_supplicants;
	/* pm2xxx_charger sub-class */
	pm2->ac_chg.ops.enable = &pm2xxx_charger_ac_en;
	pm2->ac_chg.ops.kick_wd = &pm2xxx_charger_watchdog_kick;
	pm2->ac_chg.ops.update_curr = &pm2xxx_charger_update_charger_current;
	pm2->ac_chg.max_out_volt = pm2xxx_charger_voltage_map[
		FUNC0(pm2xxx_charger_voltage_map) - 1];
	pm2->ac_chg.max_out_curr = pm2xxx_charger_current_map[
		FUNC0(pm2xxx_charger_current_map) - 1];
	pm2->ac_chg.wdt_refresh = WD_KICK_INTERVAL;
	pm2->ac_chg.enabled = true;
	pm2->ac_chg.external = true;

	/* Create a work queue for the charger */
	pm2->charger_wq = FUNC6("pm2xxx_charger_wq",
						  WQ_MEM_RECLAIM);
	if (pm2->charger_wq == NULL) {
		ret = -ENOMEM;
		FUNC8(pm2->dev, "failed to create work queue\n");
		goto free_device_info;
	}

	/* Init work for charger detection */
	FUNC2(&pm2->ac_work, pm2xxx_charger_ac_work);

	/* Init work for checking HW status */
	FUNC2(&pm2->check_main_thermal_prot_work,
		pm2xxx_charger_check_main_thermal_prot_work);

	/* Init work for HW failure check */
	FUNC1(&pm2->check_hw_failure_work,
		pm2xxx_charger_check_hw_failure_work);

	/*
	 * VDD ADC supply needs to be enabled from this driver when there
	 * is a charger connected to avoid erroneous BTEMP_HIGH/LOW
	 * interrupts during charging
	 */
	pm2->regu = FUNC33(pm2->dev, "vddadc");
	if (FUNC3(pm2->regu)) {
		ret = FUNC4(pm2->regu);
		FUNC8(pm2->dev, "failed to get vddadc regulator\n");
		goto free_charger_wq;
	}

	/* Register AC charger class */
	pm2->ac_chg.psy = FUNC31(pm2->dev, &pm2->ac_chg_desc,
						&psy_cfg);
	if (FUNC3(pm2->ac_chg.psy)) {
		FUNC8(pm2->dev, "failed to register AC charger\n");
		ret = FUNC4(pm2->ac_chg.psy);
		goto free_regulator;
	}

	/* Register interrupts */
	ret = FUNC35(FUNC17(pm2->pdata->gpio_irq_number),
				NULL,
				pm2xxx_charger_irq[0].isr,
				pm2->pdata->irq_type,
				pm2xxx_charger_irq[0].name, pm2);

	if (ret != 0) {
		FUNC8(pm2->dev, "failed to request %s IRQ %d: %d\n",
		pm2xxx_charger_irq[0].name,
			FUNC17(pm2->pdata->gpio_irq_number), ret);
		goto unregister_pm2xxx_charger;
	}

	ret = FUNC27(pm2->dev);
	if (ret)
		FUNC8(pm2->dev, "set active Error\n");

	FUNC25(pm2->dev);
	FUNC28(pm2->dev, PM2XXX_AUTOSUSPEND_DELAY);
	FUNC29(pm2->dev);
	FUNC26(pm2->dev);

	/* pm interrupt can wake up system */
	ret = FUNC11(FUNC17(pm2->pdata->gpio_irq_number));
	if (ret) {
		FUNC8(pm2->dev, "failed to set irq wake\n");
		goto unregister_pm2xxx_interrupt;
	}

	FUNC22(&pm2->lock);

	if (FUNC15(pm2->pdata->lpn_gpio)) {
		/* get lpn GPIO from platform data */
		pm2->lpn_pin = pm2->pdata->lpn_gpio;

		/*
		 * Charger detection mechanism requires pulling up the LPN pin
		 * while i2c communication if Charger is not connected
		 * LPN pin of PM2301 is GPIO60 of AB9540
		 */
		ret = FUNC16(pm2->lpn_pin, "pm2301_lpm_gpio");

		if (ret < 0) {
			FUNC8(pm2->dev, "pm2301_lpm_gpio request failed\n");
			goto disable_pm2_irq_wake;
		}
		ret = FUNC13(pm2->lpn_pin, 0);
		if (ret < 0) {
			FUNC8(pm2->dev, "pm2301_lpm_gpio direction failed\n");
			goto free_gpio;
		}
		FUNC36(pm2);
	}

	/* read  interrupt registers */
	for (i = 0; i < PM2XXX_NUM_INT_REG; i++)
		FUNC24(pm2,
			pm2xxx_interrupt_registers[i],
			&val);

	ret = FUNC23(pm2, &val);

	if ((ret == 0) && val) {
		pm2->ac.charger_connected = 1;
		FUNC5(~AB8500_POW_KEY_1_ON,
					     AB8500_MAIN_CH_DET);
		pm2->ac_conn = true;
		FUNC30(pm2->ac_chg.psy);
		FUNC37(&pm2->ac_chg.psy->dev.kobj, NULL, "present");
	}

	return 0;

free_gpio:
	if (FUNC15(pm2->lpn_pin))
		FUNC14(pm2->lpn_pin);
disable_pm2_irq_wake:
	FUNC10(FUNC17(pm2->pdata->gpio_irq_number));
unregister_pm2xxx_interrupt:
	/* disable interrupt */
	FUNC12(FUNC17(pm2->pdata->gpio_irq_number), pm2);
unregister_pm2xxx_charger:
	/* unregister power supply */
	FUNC32(pm2->ac_chg.psy);
free_regulator:
	/* disable the regulator */
	FUNC34(pm2->regu);
free_charger_wq:
	FUNC7(pm2->charger_wq);
free_device_info:
	FUNC20(pm2);

	return ret;
}