#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct isp1704_charger* drv_data; } ;
struct TYPE_22__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_21__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_23__ {char* name; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; } ;
struct isp1704_charger {TYPE_2__* psy; int /*<<< orphan*/  work; TYPE_2__* phy; int /*<<< orphan*/  model; TYPE_6__* dev; TYPE_3__ nb; TYPE_7__ psy_desc; TYPE_2__* enable_gpio; } ;
struct TYPE_20__ {scalar_t__ last_event; TYPE_1__* otg; } ;
struct TYPE_19__ {int /*<<< orphan*/  default_a; scalar_t__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_USB ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ USB_EVENT_NONE ; 
 scalar_t__ USB_EVENT_VBUS ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 struct isp1704_charger* FUNC7 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isp1704_charger_get_property ; 
 int /*<<< orphan*/  FUNC10 (struct isp1704_charger*,int) ; 
 int /*<<< orphan*/  isp1704_charger_work ; 
 int /*<<< orphan*/  isp1704_notifier_call ; 
 int FUNC11 (struct isp1704_charger*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct isp1704_charger*) ; 
 int /*<<< orphan*/  power_props ; 
 TYPE_2__* FUNC13 (TYPE_6__*,TYPE_7__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct isp1704_charger	*isp;
	int			ret = -ENODEV;
	struct power_supply_config psy_cfg = {};

	isp = FUNC7(&pdev->dev, sizeof(*isp), GFP_KERNEL);
	if (!isp)
		return -ENOMEM;

	isp->enable_gpio = FUNC6(&pdev->dev, "nxp,enable",
					  GPIOD_OUT_HIGH);
	if (FUNC2(isp->enable_gpio)) {
		ret = FUNC3(isp->enable_gpio);
		FUNC4(&pdev->dev, "Could not get reset gpio: %d\n", ret);
		return ret;
	}

	if (pdev->dev.of_node)
		isp->phy = FUNC9(&pdev->dev, "usb-phy", 0);
	else
		isp->phy = FUNC8(&pdev->dev, USB_PHY_TYPE_USB2);

	if (FUNC2(isp->phy)) {
		ret = FUNC3(isp->phy);
		FUNC4(&pdev->dev, "usb_get_phy failed\n");
		goto fail0;
	}

	isp->dev = &pdev->dev;
	FUNC12(pdev, isp);

	FUNC10(isp, 1);

	ret = FUNC11(isp);
	if (ret < 0) {
		FUNC4(&pdev->dev, "isp1704_test_ulpi failed\n");
		goto fail1;
	}

	isp->psy_desc.name		= "isp1704";
	isp->psy_desc.type		= POWER_SUPPLY_TYPE_USB;
	isp->psy_desc.properties	= power_props;
	isp->psy_desc.num_properties	= FUNC0(power_props);
	isp->psy_desc.get_property	= isp1704_charger_get_property;

	psy_cfg.drv_data		= isp;

	isp->psy = FUNC13(isp->dev, &isp->psy_desc, &psy_cfg);
	if (FUNC2(isp->psy)) {
		ret = FUNC3(isp->psy);
		FUNC4(&pdev->dev, "power_supply_register failed\n");
		goto fail1;
	}

	/*
	 * REVISIT: using work in order to allow the usb notifications to be
	 * made atomically in the future.
	 */
	FUNC1(&isp->work, isp1704_charger_work);

	isp->nb.notifier_call = isp1704_notifier_call;

	ret = FUNC17(isp->phy, &isp->nb);
	if (ret) {
		FUNC4(&pdev->dev, "usb_register_notifier failed\n");
		goto fail2;
	}

	FUNC5(isp->dev, "registered with product id %s\n", isp->model);

	/*
	 * Taking over the D+ pullup.
	 *
	 * FIXME: The device will be disconnected if it was already
	 * enumerated. The charger driver should be always loaded before any
	 * gadget is loaded.
	 */
	if (isp->phy->otg->gadget)
		FUNC16(isp->phy->otg->gadget);

	if (isp->phy->last_event == USB_EVENT_NONE)
		FUNC10(isp, 0);

	/* Detect charger if VBUS is valid (the cable was already plugged). */
	if (isp->phy->last_event == USB_EVENT_VBUS &&
			!isp->phy->otg->default_a)
		FUNC15(&isp->work);

	return 0;
fail2:
	FUNC14(isp->psy);
fail1:
	FUNC10(isp, 0);
fail0:
	FUNC4(&pdev->dev, "failed to register isp1704 with error %d\n", ret);

	return ret;
}