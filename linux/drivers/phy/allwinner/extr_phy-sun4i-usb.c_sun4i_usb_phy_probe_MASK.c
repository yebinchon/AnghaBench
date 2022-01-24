#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ priority; int /*<<< orphan*/  notifier_call; } ;
struct sun4i_usb_phy_data {scalar_t__ id_det_irq; scalar_t__ vbus_det_irq; int vbus_power_nb_registered; TYPE_1__ vbus_power_nb; struct phy_provider* vbus_power_supply; struct phy_provider* vbus_det_gpio; struct phy_provider* id_det_gpio; struct sun4i_usb_phy* phys; TYPE_2__* cfg; struct phy_provider* extcon; int /*<<< orphan*/  dr_mode; struct phy_provider* base; int /*<<< orphan*/  detect; int /*<<< orphan*/  reg_lock; } ;
struct sun4i_usb_phy {int index; struct phy_provider* phy; struct phy_provider* pmu; struct phy_provider* reset; struct phy_provider* clk2; struct phy_provider* clk; struct phy_provider* vbus; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int num_phys; int missing_phys; int hsic_index; scalar_t__ phy0_dual_route; scalar_t__ dedicated_clocks; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (struct phy_provider*) ; 
 int FUNC3 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct sun4i_usb_phy_data*) ; 
 void* FUNC7 (struct device*,char*) ; 
 struct phy_provider* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,struct phy_provider*) ; 
 void* FUNC10 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct device*,struct resource*) ; 
 struct sun4i_usb_phy_data* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC14 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct phy_provider* FUNC15 (struct device*,char*) ; 
 struct phy_provider* FUNC16 (struct device*,char*) ; 
 int FUNC17 (struct device*,scalar_t__,int /*<<< orphan*/ ,int,char*,struct sun4i_usb_phy_data*) ; 
 struct phy_provider* FUNC18 (struct device*,char*) ; 
 void* FUNC19 (struct phy_provider*) ; 
 TYPE_2__* FUNC20 (struct device*) ; 
 scalar_t__ FUNC21 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct phy_provider*,struct sun4i_usb_phy*) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*,int) ; 
 int /*<<< orphan*/  sun4i_usb_phy0_cable ; 
 int /*<<< orphan*/  sun4i_usb_phy0_id_vbus_det_irq ; 
 int /*<<< orphan*/  sun4i_usb_phy0_id_vbus_det_scan ; 
 int /*<<< orphan*/  sun4i_usb_phy0_vbus_notify ; 
 int /*<<< orphan*/  sun4i_usb_phy_ops ; 
 int /*<<< orphan*/  FUNC29 (struct platform_device*) ; 
 int /*<<< orphan*/  sun4i_usb_phy_xlate ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct sun4i_usb_phy_data *data;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct phy_provider *phy_provider;
	struct resource *res;
	int i, ret;

	data = FUNC12(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC27(&data->reg_lock);
	FUNC1(&data->detect, sun4i_usb_phy0_id_vbus_det_scan);
	FUNC6(dev, data);
	data->cfg = FUNC20(dev);
	if (!data->cfg)
		return -EINVAL;

	res = FUNC24(pdev, IORESOURCE_MEM, "phy_ctrl");
	data->base = FUNC11(dev, res);
	if (FUNC2(data->base))
		return FUNC3(data->base);

	data->id_det_gpio = FUNC10(dev, "usb0_id_det",
						    GPIOD_IN);
	if (FUNC2(data->id_det_gpio)) {
		FUNC5(dev, "Couldn't request ID GPIO\n");
		return FUNC3(data->id_det_gpio);
	}

	data->vbus_det_gpio = FUNC10(dev, "usb0_vbus_det",
						      GPIOD_IN);
	if (FUNC2(data->vbus_det_gpio)) {
		FUNC5(dev, "Couldn't request VBUS detect GPIO\n");
		return FUNC3(data->vbus_det_gpio);
	}

	if (FUNC21(np, "usb0_vbus_power-supply", NULL)) {
		data->vbus_power_supply = FUNC15(dev,
						     "usb0_vbus_power-supply");
		if (FUNC2(data->vbus_power_supply)) {
			FUNC5(dev, "Couldn't get the VBUS power supply\n");
			return FUNC3(data->vbus_power_supply);
		}

		if (!data->vbus_power_supply)
			return -EPROBE_DEFER;
	}

	data->dr_mode = FUNC22(np, 0);

	data->extcon = FUNC8(dev, sun4i_usb_phy0_cable);
	if (FUNC2(data->extcon)) {
		FUNC5(dev, "Couldn't allocate our extcon device\n");
		return FUNC3(data->extcon);
	}

	ret = FUNC9(dev, data->extcon);
	if (ret) {
		FUNC5(dev, "failed to register extcon: %d\n", ret);
		return ret;
	}

	for (i = 0; i < data->cfg->num_phys; i++) {
		struct sun4i_usb_phy *phy = data->phys + i;
		char name[16];

		if (data->cfg->missing_phys & FUNC0(i))
			continue;

		FUNC26(name, sizeof(name), "usb%d_vbus", i);
		phy->vbus = FUNC16(dev, name);
		if (FUNC2(phy->vbus)) {
			if (FUNC3(phy->vbus) == -EPROBE_DEFER) {
				FUNC5(dev,
					"Couldn't get regulator %s... Deferring probe\n",
					name);
				return -EPROBE_DEFER;
			}

			phy->vbus = NULL;
		}

		if (data->cfg->dedicated_clocks)
			FUNC26(name, sizeof(name), "usb%d_phy", i);
		else
			FUNC28(name, "usb_phy", sizeof(name));

		phy->clk = FUNC7(dev, name);
		if (FUNC2(phy->clk)) {
			FUNC5(dev, "failed to get clock %s\n", name);
			return FUNC3(phy->clk);
		}

		/* The first PHY is always tied to OTG, and never HSIC */
		if (data->cfg->hsic_index && i == data->cfg->hsic_index) {
			/* HSIC needs secondary clock */
			FUNC26(name, sizeof(name), "usb%d_hsic_12M", i);
			phy->clk2 = FUNC7(dev, name);
			if (FUNC2(phy->clk2)) {
				FUNC5(dev, "failed to get clock %s\n", name);
				return FUNC3(phy->clk2);
			}
		}

		FUNC26(name, sizeof(name), "usb%d_reset", i);
		phy->reset = FUNC18(dev, name);
		if (FUNC2(phy->reset)) {
			FUNC5(dev, "failed to get reset %s\n", name);
			return FUNC3(phy->reset);
		}

		if (i || data->cfg->phy0_dual_route) { /* No pmu for musb */
			FUNC26(name, sizeof(name), "pmu%d", i);
			res = FUNC24(pdev,
							IORESOURCE_MEM, name);
			phy->pmu = FUNC11(dev, res);
			if (FUNC2(phy->pmu))
				return FUNC3(phy->pmu);
		}

		phy->phy = FUNC14(dev, NULL, &sun4i_usb_phy_ops);
		if (FUNC2(phy->phy)) {
			FUNC5(dev, "failed to create PHY %d\n", i);
			return FUNC3(phy->phy);
		}

		phy->index = i;
		FUNC23(phy->phy, &data->phys[i]);
	}

	data->id_det_irq = FUNC19(data->id_det_gpio);
	if (data->id_det_irq > 0) {
		ret = FUNC17(dev, data->id_det_irq,
				sun4i_usb_phy0_id_vbus_det_irq,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				"usb0-id-det", data);
		if (ret) {
			FUNC5(dev, "Err requesting id-det-irq: %d\n", ret);
			return ret;
		}
	}

	data->vbus_det_irq = FUNC19(data->vbus_det_gpio);
	if (data->vbus_det_irq > 0) {
		ret = FUNC17(dev, data->vbus_det_irq,
				sun4i_usb_phy0_id_vbus_det_irq,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
				"usb0-vbus-det", data);
		if (ret) {
			FUNC5(dev, "Err requesting vbus-det-irq: %d\n", ret);
			data->vbus_det_irq = -1;
			FUNC29(pdev); /* Stop detect work */
			return ret;
		}
	}

	if (data->vbus_power_supply) {
		data->vbus_power_nb.notifier_call = sun4i_usb_phy0_vbus_notify;
		data->vbus_power_nb.priority = 0;
		ret = FUNC25(&data->vbus_power_nb);
		if (ret) {
			FUNC29(pdev); /* Stop detect work */
			return ret;
		}
		data->vbus_power_nb_registered = true;
	}

	phy_provider = FUNC13(dev, sun4i_usb_phy_xlate);
	if (FUNC2(phy_provider)) {
		FUNC29(pdev); /* Stop detect work */
		return FUNC3(phy_provider);
	}

	FUNC4(dev, "successfully loaded\n");

	return 0;
}