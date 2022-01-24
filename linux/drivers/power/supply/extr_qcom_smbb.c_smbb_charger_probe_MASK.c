#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int id; char* name; char* supply_name; char* of_match; int /*<<< orphan*/  type; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; } ;
struct smbb_charger {int revision; scalar_t__ addr; int /*<<< orphan*/  regmap; void* jeita_ext_temp; void* otg_reg; TYPE_3__ otg_rdesc; void* dc_psy; void* dc_disabled; void* edev; void* usb_psy; void* bat_psy; int /*<<< orphan*/  statlock; TYPE_1__* dev; } ;
struct regulator_config {struct smbb_charger* driver_data; TYPE_1__* dev; } ;
struct reg_off_mask_default {int rev_mask; int mask; int value; scalar_t__ offset; int /*<<< orphan*/  name; int /*<<< orphan*/  (* handler ) (int,struct smbb_charger*) ;} ;
struct power_supply_config {int num_supplicants; struct reg_off_mask_default* supplied_to; struct smbb_charger* drv_data; int /*<<< orphan*/  of_node; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct reg_off_mask_default*) ; 
 int FUNC1 (int) ; 
 int BTC_CTRL_COLD_EXT ; 
 int BTC_CTRL_HOT_EXT_N ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 scalar_t__ SMBB_BAT_BTC_CTRL ; 
 scalar_t__ SMBB_MISC_REV2 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int _ATTR_CNT ; 
 int /*<<< orphan*/  bat_psy_desc ; 
 int /*<<< orphan*/  dc_psy_desc ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 void* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,void*) ; 
 struct smbb_charger* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 void* FUNC11 (TYPE_1__*,TYPE_3__*,struct regulator_config*) ; 
 int FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int,struct smbb_charger*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smbb_charger*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct smbb_charger*) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC19 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 struct reg_off_mask_default* smbb_bif ; 
 int FUNC20 (struct smbb_charger*,int) ; 
 struct reg_off_mask_default* smbb_charger_irqs ; 
 struct reg_off_mask_default* smbb_charger_setup ; 
 int /*<<< orphan*/  smbb_chg_otg_ops ; 
 int /*<<< orphan*/  smbb_usb_extcon_cable ; 
 int /*<<< orphan*/  FUNC21 (int,struct smbb_charger*) ; 
 int /*<<< orphan*/  usb_psy_desc ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct power_supply_config bat_cfg = {};
	struct power_supply_config usb_cfg = {};
	struct power_supply_config dc_cfg = {};
	struct smbb_charger *chg;
	struct regulator_config config = { };
	int rc, i;

	chg = FUNC9(&pdev->dev, sizeof(*chg), GFP_KERNEL);
	if (!chg)
		return -ENOMEM;

	chg->dev = &pdev->dev;
	FUNC13(&chg->statlock);

	chg->regmap = FUNC5(pdev->dev.parent, NULL);
	if (!chg->regmap) {
		FUNC4(&pdev->dev, "failed to locate regmap\n");
		return -ENODEV;
	}

	rc = FUNC15(pdev->dev.of_node, "reg", &chg->addr);
	if (rc) {
		FUNC4(&pdev->dev, "missing or invalid 'reg' property\n");
		return rc;
	}

	rc = FUNC18(chg->regmap, chg->addr + SMBB_MISC_REV2, &chg->revision);
	if (rc) {
		FUNC4(&pdev->dev, "unable to read revision\n");
		return rc;
	}

	chg->revision += 1;
	if (chg->revision != 2 && chg->revision != 3) {
		FUNC4(&pdev->dev, "v1 hardware not supported\n");
		return -ENODEV;
	}
	FUNC6(&pdev->dev, "Initializing SMBB rev %u", chg->revision);

	chg->dc_disabled = FUNC14(pdev->dev.of_node, "qcom,disable-dc");

	for (i = 0; i < _ATTR_CNT; ++i) {
		rc = FUNC20(chg, i);
		if (rc) {
			FUNC4(&pdev->dev, "failed to parse/apply settings\n");
			return rc;
		}
	}

	bat_cfg.drv_data = chg;
	bat_cfg.of_node = pdev->dev.of_node;
	chg->bat_psy = FUNC10(&pdev->dev,
						  &bat_psy_desc,
						  &bat_cfg);
	if (FUNC2(chg->bat_psy)) {
		FUNC4(&pdev->dev, "failed to register battery\n");
		return FUNC3(chg->bat_psy);
	}

	usb_cfg.drv_data = chg;
	usb_cfg.supplied_to = smbb_bif;
	usb_cfg.num_supplicants = FUNC0(smbb_bif);
	chg->usb_psy = FUNC10(&pdev->dev,
						  &usb_psy_desc,
						  &usb_cfg);
	if (FUNC2(chg->usb_psy)) {
		FUNC4(&pdev->dev, "failed to register USB power supply\n");
		return FUNC3(chg->usb_psy);
	}

	chg->edev = FUNC7(&pdev->dev, smbb_usb_extcon_cable);
	if (FUNC2(chg->edev)) {
		FUNC4(&pdev->dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	rc = FUNC8(&pdev->dev, chg->edev);
	if (rc < 0) {
		FUNC4(&pdev->dev, "failed to register extcon device\n");
		return rc;
	}

	if (!chg->dc_disabled) {
		dc_cfg.drv_data = chg;
		dc_cfg.supplied_to = smbb_bif;
		dc_cfg.num_supplicants = FUNC0(smbb_bif);
		chg->dc_psy = FUNC10(&pdev->dev,
							 &dc_psy_desc,
							 &dc_cfg);
		if (FUNC2(chg->dc_psy)) {
			FUNC4(&pdev->dev, "failed to register DC power supply\n");
			return FUNC3(chg->dc_psy);
		}
	}

	for (i = 0; i < FUNC0(smbb_charger_irqs); ++i) {
		int irq;

		irq = FUNC16(pdev, smbb_charger_irqs[i].name);
		if (irq < 0) {
			FUNC4(&pdev->dev, "failed to get irq '%s'\n",
				smbb_charger_irqs[i].name);
			return irq;
		}

		smbb_charger_irqs[i].handler(irq, chg);

		rc = FUNC12(&pdev->dev, irq, NULL,
				smbb_charger_irqs[i].handler, IRQF_ONESHOT,
				smbb_charger_irqs[i].name, chg);
		if (rc) {
			FUNC4(&pdev->dev, "failed to request irq '%s'\n",
				smbb_charger_irqs[i].name);
			return rc;
		}
	}

	/*
	 * otg regulator is used to control VBUS voltage direction
	 * when USB switches between host and gadget mode
	 */
	chg->otg_rdesc.id = -1;
	chg->otg_rdesc.name = "otg-vbus";
	chg->otg_rdesc.ops = &smbb_chg_otg_ops;
	chg->otg_rdesc.owner = THIS_MODULE;
	chg->otg_rdesc.type = REGULATOR_VOLTAGE;
	chg->otg_rdesc.supply_name = "usb-otg-in";
	chg->otg_rdesc.of_match = "otg-vbus";

	config.dev = &pdev->dev;
	config.driver_data = chg;

	chg->otg_reg = FUNC11(&pdev->dev, &chg->otg_rdesc,
					       &config);
	if (FUNC2(chg->otg_reg))
		return FUNC3(chg->otg_reg);

	chg->jeita_ext_temp = FUNC14(pdev->dev.of_node,
			"qcom,jeita-extended-temp-range");

	/* Set temperature range to [35%:70%] or [25%:80%] accordingly */
	rc = FUNC19(chg->regmap, chg->addr + SMBB_BAT_BTC_CTRL,
			BTC_CTRL_COLD_EXT | BTC_CTRL_HOT_EXT_N,
			chg->jeita_ext_temp ?
				BTC_CTRL_COLD_EXT :
				BTC_CTRL_HOT_EXT_N);
	if (rc) {
		FUNC4(&pdev->dev,
			"unable to set %s temperature range\n",
			chg->jeita_ext_temp ? "JEITA extended" : "normal");
		return rc;
	}

	for (i = 0; i < FUNC0(smbb_charger_setup); ++i) {
		const struct reg_off_mask_default *r = &smbb_charger_setup[i];

		if (r->rev_mask & FUNC1(chg->revision))
			continue;

		rc = FUNC19(chg->regmap, chg->addr + r->offset,
				r->mask, r->value);
		if (rc) {
			FUNC4(&pdev->dev,
				"unable to initializing charging, bailing\n");
			return rc;
		}
	}

	FUNC17(pdev, chg);

	return 0;
}