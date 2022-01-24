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
typedef  scalar_t__ u32 ;
struct usb_phy_generic_platform_data {int type; int needs_vcc; void* gpiod_vbus; int /*<<< orphan*/  gpio_reset; scalar_t__ clk_rate; } ;
struct TYPE_3__ {char* label; int type; TYPE_2__* otg; int /*<<< orphan*/  set_suspend; struct device* dev; } ;
struct usb_phy_generic {TYPE_1__ phy; struct device* dev; int /*<<< orphan*/  vcc; int /*<<< orphan*/  clk; void* gpiod_reset; void* gpiod_vbus; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  enum usb_phy_type { ____Placeholder_usb_phy_type } usb_phy_type ;
struct TYPE_4__ {int /*<<< orphan*/  set_peripheral; int /*<<< orphan*/  set_host; TYPE_1__* usb_phy; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 int /*<<< orphan*/  GPIOF_ACTIVE_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int USB_PHY_TYPE_USB2 ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct device*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,int) ; 
 int /*<<< orphan*/  nop_set_host ; 
 int /*<<< orphan*/  nop_set_peripheral ; 
 int /*<<< orphan*/  nop_set_suspend ; 
 int FUNC15 (struct device_node*,char*) ; 
 scalar_t__ FUNC16 (struct device_node*,char*,scalar_t__*) ; 

int FUNC17(struct device *dev, struct usb_phy_generic *nop,
		struct usb_phy_generic_platform_data *pdata)
{
	enum usb_phy_type type = USB_PHY_TYPE_USB2;
	int err = 0;

	u32 clk_rate = 0;
	bool needs_vcc = false, needs_clk = false;

	if (dev->of_node) {
		struct device_node *node = dev->of_node;

		if (FUNC16(node, "clock-frequency", &clk_rate))
			clk_rate = 0;

		needs_vcc = FUNC15(node, "vcc-supply");
		needs_clk = FUNC15(node, "clocks");
		nop->gpiod_reset = FUNC9(dev, "reset",
							   GPIOD_ASIS);
		err = FUNC2(nop->gpiod_reset);
		if (!err) {
			nop->gpiod_vbus = FUNC9(dev,
							 "vbus-detect",
							 GPIOD_ASIS);
			err = FUNC2(nop->gpiod_vbus);
		}
	} else if (pdata) {
		type = pdata->type;
		clk_rate = pdata->clk_rate;
		needs_vcc = pdata->needs_vcc;
		if (FUNC12(pdata->gpio_reset)) {
			err = FUNC8(dev, pdata->gpio_reset,
						    GPIOF_ACTIVE_LOW,
						    FUNC6(dev));
			if (!err)
				nop->gpiod_reset =
					FUNC13(pdata->gpio_reset);
		}
		nop->gpiod_vbus = pdata->gpiod_vbus;
	}

	if (err == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (err) {
		FUNC5(dev, "Error requesting RESET or VBUS GPIO\n");
		return err;
	}
	if (nop->gpiod_reset)
		FUNC14(nop->gpiod_reset, 1);

	nop->phy.otg = FUNC10(dev, sizeof(*nop->phy.otg),
			GFP_KERNEL);
	if (!nop->phy.otg)
		return -ENOMEM;

	nop->clk = FUNC7(dev, "main_clk");
	if (FUNC0(nop->clk)) {
		FUNC4(dev, "Can't get phy clock: %ld\n",
					FUNC1(nop->clk));
		if (needs_clk)
			return FUNC1(nop->clk);
	}

	if (!FUNC0(nop->clk) && clk_rate) {
		err = FUNC3(nop->clk, clk_rate);
		if (err) {
			FUNC5(dev, "Error setting clock rate\n");
			return err;
		}
	}

	nop->vcc = FUNC11(dev, "vcc");
	if (FUNC0(nop->vcc)) {
		FUNC4(dev, "Error getting vcc regulator: %ld\n",
					FUNC1(nop->vcc));
		if (needs_vcc)
			return -EPROBE_DEFER;
	}

	nop->dev		= dev;
	nop->phy.dev		= nop->dev;
	nop->phy.label		= "nop-xceiv";
	nop->phy.set_suspend	= nop_set_suspend;
	nop->phy.type		= type;

	nop->phy.otg->state		= OTG_STATE_UNDEFINED;
	nop->phy.otg->usb_phy		= &nop->phy;
	nop->phy.otg->set_host		= nop_set_host;
	nop->phy.otg->set_peripheral	= nop_set_peripheral;

	return 0;
}