#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct usb_phy_data {int flags; int /*<<< orphan*/  power_off; int /*<<< orphan*/  power_on; int /*<<< orphan*/  mask; int /*<<< orphan*/  label; } ;
struct usb_otg {TYPE_1__* usb_phy; int /*<<< orphan*/  start_srp; int /*<<< orphan*/  set_vbus; int /*<<< orphan*/  set_peripheral; int /*<<< orphan*/  set_host; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;
struct TYPE_13__ {int /*<<< orphan*/  type; struct usb_otg* otg; int /*<<< orphan*/  label; TYPE_2__* dev; } ;
struct omap_usb {int flags; TYPE_1__ phy; TYPE_2__* dev; struct phy_provider* optclk; struct phy_provider* wkupclk; int /*<<< orphan*/  power_reg; TYPE_2__* control_dev; struct phy_provider* syscon_phy_power; struct phy_provider* phy_base; int /*<<< orphan*/  power_off; int /*<<< orphan*/  power_on; int /*<<< orphan*/  mask; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int OMAP_USB2_CALIBRATE_FALSE_DISCONNECT ; 
 int OMAP_USB2_HAS_SET_VBUS ; 
 int OMAP_USB2_HAS_START_SRP ; 
 int FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 void* FUNC5 (TYPE_2__*,char*) ; 
 struct phy_provider* FUNC6 (TYPE_2__*,struct resource*) ; 
 void* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC10 (struct device_node*) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct device_node* FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 scalar_t__ FUNC13 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_usb2_id_table ; 
 int /*<<< orphan*/  FUNC14 (struct phy_provider*) ; 
 int /*<<< orphan*/  omap_usb_set_host ; 
 int /*<<< orphan*/  omap_usb_set_peripheral ; 
 int /*<<< orphan*/  omap_usb_set_vbus ; 
 int /*<<< orphan*/  omap_usb_start_srp ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC15 (struct phy_provider*,struct omap_usb*) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct omap_usb*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 struct phy_provider* FUNC20 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct omap_usb	*phy;
	struct phy *generic_phy;
	struct resource *res;
	struct phy_provider *phy_provider;
	struct usb_otg *otg;
	struct device_node *node = pdev->dev.of_node;
	struct device_node *control_node;
	struct platform_device *control_pdev;
	const struct of_device_id *of_id;
	struct usb_phy_data *phy_data;

	of_id = FUNC11(omap_usb2_id_table, &pdev->dev);

	if (!of_id)
		return -EINVAL;

	phy_data = (struct usb_phy_data *)of_id->data;

	phy = FUNC7(&pdev->dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	otg = FUNC7(&pdev->dev, sizeof(*otg), GFP_KERNEL);
	if (!otg)
		return -ENOMEM;

	phy->dev		= &pdev->dev;

	phy->phy.dev		= phy->dev;
	phy->phy.label		= phy_data->label;
	phy->phy.otg		= otg;
	phy->phy.type		= USB_PHY_TYPE_USB2;
	phy->mask		= phy_data->mask;
	phy->power_on		= phy_data->power_on;
	phy->power_off		= phy_data->power_off;

	if (phy_data->flags & OMAP_USB2_CALIBRATE_FALSE_DISCONNECT) {
		res = FUNC16(pdev, IORESOURCE_MEM, 0);
		phy->phy_base = FUNC6(&pdev->dev, res);
		if (FUNC0(phy->phy_base))
			return FUNC1(phy->phy_base);
		phy->flags |= OMAP_USB2_CALIBRATE_FALSE_DISCONNECT;
	}

	phy->syscon_phy_power = FUNC20(node,
							"syscon-phy-power");
	if (FUNC0(phy->syscon_phy_power)) {
		FUNC2(&pdev->dev,
			"can't get syscon-phy-power, using control device\n");
		phy->syscon_phy_power = NULL;

		control_node = FUNC12(node, "ctrl-module", 0);
		if (!control_node) {
			FUNC3(&pdev->dev,
				"Failed to get control device phandle\n");
			return -EINVAL;
		}

		control_pdev = FUNC10(control_node);
		if (!control_pdev) {
			FUNC3(&pdev->dev, "Failed to get control device\n");
			return -EINVAL;
		}
		phy->control_dev = &control_pdev->dev;
	} else {
		if (FUNC13(node,
					       "syscon-phy-power", 1,
					       &phy->power_reg)) {
			FUNC3(&pdev->dev,
				"couldn't get power reg. offset\n");
			return -EINVAL;
		}
	}


	phy->wkupclk = FUNC5(phy->dev, "wkupclk");
	if (FUNC0(phy->wkupclk)) {
		if (FUNC1(phy->wkupclk) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC4(&pdev->dev, "unable to get wkupclk %ld, trying old name\n",
			 FUNC1(phy->wkupclk));
		phy->wkupclk = FUNC5(phy->dev, "usb_phy_cm_clk32k");

		if (FUNC0(phy->wkupclk)) {
			if (FUNC1(phy->wkupclk) != -EPROBE_DEFER)
				FUNC3(&pdev->dev, "unable to get usb_phy_cm_clk32k\n");
			return FUNC1(phy->wkupclk);
		} else {
			FUNC4(&pdev->dev,
				 "found usb_phy_cm_clk32k, please fix DTS\n");
		}
	}

	phy->optclk = FUNC5(phy->dev, "refclk");
	if (FUNC0(phy->optclk)) {
		if (FUNC1(phy->optclk) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC2(&pdev->dev, "unable to get refclk, trying old name\n");
		phy->optclk = FUNC5(phy->dev, "usb_otg_ss_refclk960m");

		if (FUNC0(phy->optclk)) {
			if (FUNC1(phy->optclk) != -EPROBE_DEFER) {
				FUNC2(&pdev->dev,
					"unable to get usb_otg_ss_refclk960m\n");
			}
		} else {
			FUNC4(&pdev->dev,
				 "found usb_otg_ss_refclk960m, please fix DTS\n");
		}
	}

	otg->set_host = omap_usb_set_host;
	otg->set_peripheral = omap_usb_set_peripheral;
	if (phy_data->flags & OMAP_USB2_HAS_SET_VBUS)
		otg->set_vbus = omap_usb_set_vbus;
	if (phy_data->flags & OMAP_USB2_HAS_START_SRP)
		otg->start_srp = omap_usb_start_srp;
	otg->usb_phy = &phy->phy;

	FUNC17(pdev, phy);
	FUNC19(phy->dev);

	generic_phy = FUNC9(phy->dev, NULL, &ops);
	if (FUNC0(generic_phy)) {
		FUNC18(phy->dev);
		return FUNC1(generic_phy);
	}

	FUNC15(generic_phy, phy);
	FUNC14(generic_phy);

	phy_provider = FUNC8(phy->dev,
						     of_phy_simple_xlate);
	if (FUNC0(phy_provider)) {
		FUNC18(phy->dev);
		return FUNC1(phy_provider);
	}


	FUNC21(&phy->phy);

	return 0;
}