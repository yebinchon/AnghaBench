#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* otg; int /*<<< orphan*/  set_suspend; int /*<<< orphan*/  label; TYPE_4__* dev; } ;
struct tahvo_usb {scalar_t__ tahvo_mode; int vbus_state; int /*<<< orphan*/  ick; TYPE_2__ phy; int /*<<< orphan*/  irq; int /*<<< orphan*/  extcon; int /*<<< orphan*/  serialize; struct platform_device* pt_dev; } ;
struct retu_dev {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  set_peripheral; int /*<<< orphan*/  set_host; TYPE_2__* usb_phy; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TAHVO_MODE_HOST ; 
 scalar_t__ TAHVO_MODE_PERIPHERAL ; 
 int /*<<< orphan*/  TAHVO_REG_IDSR ; 
 int TAHVO_STAT_VBUS ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 struct retu_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct tahvo_usb*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tahvo_usb*) ; 
 int FUNC15 (struct retu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tahvo_cable ; 
 int /*<<< orphan*/  FUNC16 (struct tahvo_usb*) ; 
 int /*<<< orphan*/  tahvo_usb_set_host ; 
 int /*<<< orphan*/  tahvo_usb_set_peripheral ; 
 int /*<<< orphan*/  tahvo_usb_set_suspend ; 
 int /*<<< orphan*/  tahvo_usb_vbus_interrupt ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct retu_dev *rdev = FUNC5(pdev->dev.parent);
	struct tahvo_usb *tu;
	int ret;

	tu = FUNC10(&pdev->dev, sizeof(*tu), GFP_KERNEL);
	if (!tu)
		return -ENOMEM;

	tu->phy.otg = FUNC10(&pdev->dev, sizeof(*tu->phy.otg),
				   GFP_KERNEL);
	if (!tu->phy.otg)
		return -ENOMEM;

	tu->pt_dev = pdev;

	/* Default mode */
#ifdef CONFIG_TAHVO_USB_HOST_BY_DEFAULT
	tu->tahvo_mode = TAHVO_MODE_HOST;
#else
	tu->tahvo_mode = TAHVO_MODE_PERIPHERAL;
#endif

	FUNC12(&tu->serialize);

	tu->ick = FUNC7(&pdev->dev, "usb_l4_ick");
	if (!FUNC0(tu->ick))
		FUNC3(tu->ick);

	/*
	 * Set initial state, so that we generate kevents only on state changes.
	 */
	tu->vbus_state = FUNC15(rdev, TAHVO_REG_IDSR) & TAHVO_STAT_VBUS;

	tu->extcon = FUNC8(&pdev->dev, tahvo_cable);
	if (FUNC0(tu->extcon)) {
		FUNC4(&pdev->dev, "failed to allocate memory for extcon\n");
		ret = FUNC1(tu->extcon);
		goto err_disable_clk;
	}

	ret = FUNC9(&pdev->dev, tu->extcon);
	if (ret) {
		FUNC4(&pdev->dev, "could not register extcon device: %d\n",
			ret);
		goto err_disable_clk;
	}

	/* Set the initial cable state. */
	FUNC11(tu->extcon, EXTCON_USB_HOST,
			       tu->tahvo_mode == TAHVO_MODE_HOST);
	FUNC11(tu->extcon, EXTCON_USB, tu->vbus_state);

	/* Create OTG interface */
	FUNC16(tu);
	tu->phy.dev = &pdev->dev;
	tu->phy.otg->state = OTG_STATE_UNDEFINED;
	tu->phy.label = DRIVER_NAME;
	tu->phy.set_suspend = tahvo_usb_set_suspend;

	tu->phy.otg->usb_phy = &tu->phy;
	tu->phy.otg->set_host = tahvo_usb_set_host;
	tu->phy.otg->set_peripheral = tahvo_usb_set_peripheral;

	ret = FUNC17(&tu->phy, USB_PHY_TYPE_USB2);
	if (ret < 0) {
		FUNC4(&pdev->dev, "cannot register USB transceiver: %d\n",
			ret);
		goto err_disable_clk;
	}

	FUNC6(&pdev->dev, tu);

	tu->irq = FUNC13(pdev, 0);
	ret = FUNC14(tu->irq, NULL, tahvo_usb_vbus_interrupt,
				   IRQF_ONESHOT,
				   "tahvo-vbus", tu);
	if (ret) {
		FUNC4(&pdev->dev, "could not register tahvo-vbus irq: %d\n",
			ret);
		goto err_remove_phy;
	}

	return 0;

err_remove_phy:
	FUNC18(&tu->phy);
err_disable_clk:
	if (!FUNC0(tu->ick))
		FUNC2(tu->ick);

	return ret;
}