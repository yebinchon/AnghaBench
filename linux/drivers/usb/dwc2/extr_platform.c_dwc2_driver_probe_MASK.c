#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dwc2_hsotg {int irq; scalar_t__ dr_mode; int gadget_enabled; int reset_phy_on_wake; int hcd_enabled; scalar_t__ hibernated; TYPE_1__* dev; int /*<<< orphan*/  phy; void* need_phy_for_wake; int /*<<< orphan*/  needs_byte_swap; int /*<<< orphan*/ * vbus_supply; int /*<<< orphan*/  lock; int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_PERIPHERAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,struct resource*) ; 
 struct dwc2_hsotg* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,char*) ; 
 int FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dwc2_hsotg*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dwc2_hsotg*) ; 
 int FUNC14 (struct dwc2_hsotg*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC16 (struct dwc2_hsotg*) ; 
 int FUNC17 (struct dwc2_hsotg*) ; 
 int FUNC18 (struct dwc2_hsotg*) ; 
 int FUNC19 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  dwc2_handle_common_intr ; 
 int FUNC20 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC21 (struct dwc2_hsotg*) ; 
 int FUNC22 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC23 (struct dwc2_hsotg*) ; 
 int FUNC24 (struct dwc2_hsotg*) ; 
 int FUNC25 (struct dwc2_hsotg*) ; 
 void* FUNC26 (int /*<<< orphan*/ ,char*) ; 
 int FUNC27 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC28 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct platform_device*,struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(struct platform_device *dev)
{
	struct dwc2_hsotg *hsotg;
	struct resource *res;
	int retval;

	hsotg = FUNC9(&dev->dev, sizeof(*hsotg), GFP_KERNEL);
	if (!hsotg)
		return -ENOMEM;

	hsotg->dev = &dev->dev;

	/*
	 * Use reasonable defaults so platforms don't have to provide these.
	 */
	if (!dev->dev.dma_mask)
		dev->dev.dma_mask = &dev->dev.coherent_dma_mask;
	retval = FUNC12(&dev->dev, FUNC0(32));
	if (retval) {
		FUNC4(&dev->dev, "can't set coherent DMA mask: %d\n", retval);
		return retval;
	}

	res = FUNC28(dev, IORESOURCE_MEM, 0);
	hsotg->regs = FUNC8(&dev->dev, res);
	if (FUNC1(hsotg->regs))
		return FUNC2(hsotg->regs);

	FUNC3(&dev->dev, "mapped PA %08lx to VA %p\n",
		(unsigned long)res->start, hsotg->regs);

	retval = FUNC25(hsotg);
	if (retval)
		return retval;

	FUNC30(&hsotg->lock);

	hsotg->irq = FUNC27(dev, 0);
	if (hsotg->irq < 0)
		return hsotg->irq;

	FUNC3(hsotg->dev, "registering common handler for irq%d\n",
		hsotg->irq);
	retval = FUNC11(hsotg->dev, hsotg->irq,
				  dwc2_handle_common_intr, IRQF_SHARED,
				  FUNC5(hsotg->dev), hsotg);
	if (retval)
		return retval;

	hsotg->vbus_supply = FUNC10(hsotg->dev, "vbus");
	if (FUNC1(hsotg->vbus_supply)) {
		retval = FUNC2(hsotg->vbus_supply);
		hsotg->vbus_supply = NULL;
		if (retval != -ENODEV)
			return retval;
	}

	retval = FUNC24(hsotg);
	if (retval)
		return retval;

	hsotg->needs_byte_swap = FUNC13(hsotg);

	retval = FUNC18(hsotg);
	if (retval)
		goto error;

	hsotg->need_phy_for_wake =
		FUNC26(dev->dev.of_node,
				      "snps,need-phy-for-wake");

	/*
	 * Reset before dwc2_get_hwparams() then it could get power-on real
	 * reset value form registers.
	 */
	retval = FUNC14(hsotg, false);
	if (retval)
		goto error;

	/* Detect config values from hardware */
	retval = FUNC19(hsotg);
	if (retval)
		goto error;

	/*
	 * For OTG cores, set the force mode bits to reflect the value
	 * of dr_mode. Force mode bits should not be touched at any
	 * other time after this.
	 */
	FUNC16(hsotg);

	retval = FUNC22(hsotg);
	if (retval)
		goto error;

	if (hsotg->dr_mode != USB_DR_MODE_HOST) {
		retval = FUNC17(hsotg);
		if (retval)
			goto error;
		hsotg->gadget_enabled = 1;
	}

	/*
	 * If we need PHY for wakeup we must be wakeup capable.
	 * When we have a device that can wake without the PHY we
	 * can adjust this condition.
	 */
	if (hsotg->need_phy_for_wake)
		FUNC7(&dev->dev, true);

	hsotg->reset_phy_on_wake =
		FUNC26(dev->dev.of_node,
				      "snps,reset-phy-on-wake");
	if (hsotg->reset_phy_on_wake && !hsotg->phy) {
		FUNC6(hsotg->dev,
			 "Quirk reset-phy-on-wake only supports generic PHYs\n");
		hsotg->reset_phy_on_wake = false;
	}

	if (hsotg->dr_mode != USB_DR_MODE_PERIPHERAL) {
		retval = FUNC20(hsotg);
		if (retval) {
			if (hsotg->gadget_enabled)
				FUNC21(hsotg);
			goto error;
		}
		hsotg->hcd_enabled = 1;
	}

	FUNC29(dev, hsotg);
	hsotg->hibernated = 0;

	FUNC15(hsotg);

	/* Gadget code manages lowlevel hw on its own */
	if (hsotg->dr_mode == USB_DR_MODE_PERIPHERAL)
		FUNC23(hsotg);

	return 0;

error:
	FUNC23(hsotg);
	return retval;
}