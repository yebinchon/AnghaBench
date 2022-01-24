#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int dummy; } ;
struct pxa_udc {scalar_t__ irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  gadget; int /*<<< orphan*/ * dev; scalar_t__ vbus_sensed; int /*<<< orphan*/  gpiod; int /*<<< orphan*/  regs; int /*<<< orphan*/  udc_command; } ;
struct pxa2xx_udc_mach_info {int gpio_pullup; int /*<<< orphan*/  udc_command; scalar_t__ gpio_pullup_inverted; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_ASIS ; 
 unsigned long GPIOF_ACTIVE_LOW ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct pxa2xx_udc_mach_info* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  driver_name ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pxa_udc memory ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct pxa_udc*) ; 
 int /*<<< orphan*/  pxa27x_udc_phy ; 
 int /*<<< orphan*/  FUNC20 (struct pxa_udc*) ; 
 int /*<<< orphan*/  pxa_udc_irq ; 
 scalar_t__ FUNC21 (struct pxa_udc*) ; 
 struct pxa_udc* the_controller ; 
 int /*<<< orphan*/  FUNC22 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC23 (struct pxa_udc*) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct resource *regs;
	struct pxa_udc *udc = &memory;
	int retval = 0, gpio;
	struct pxa2xx_udc_mach_info *mach = FUNC6(&pdev->dev);
	unsigned long gpio_flags;

	if (mach) {
		gpio_flags = mach->gpio_pullup_inverted ? GPIOF_ACTIVE_LOW : 0;
		gpio = mach->gpio_pullup;
		if (FUNC13(gpio)) {
			retval = FUNC8(&pdev->dev, gpio,
						       gpio_flags,
						       "USB D+ pullup");
			if (retval)
				return retval;
			udc->gpiod = FUNC14(mach->gpio_pullup);
		}
		udc->udc_command = mach->udc_command;
	} else {
		udc->gpiod = FUNC9(&pdev->dev, NULL, GPIOD_ASIS);
	}

	regs = FUNC18(pdev, IORESOURCE_MEM, 0);
	udc->regs = FUNC10(&pdev->dev, regs);
	if (FUNC0(udc->regs))
		return FUNC2(udc->regs);
	udc->irq = FUNC17(pdev, 0);
	if (udc->irq < 0)
		return udc->irq;

	udc->dev = &pdev->dev;
	if (FUNC16()) {
		udc->transceiver =
			FUNC12(udc->dev, "phys", 0);
		if (FUNC0(udc->transceiver))
			return FUNC2(udc->transceiver);
	} else {
		udc->transceiver = FUNC25(USB_PHY_TYPE_USB2);
	}

	if (FUNC0(udc->gpiod)) {
		FUNC5(&pdev->dev, "Couldn't find or request D+ gpio : %ld\n",
			FUNC2(udc->gpiod));
		return FUNC2(udc->gpiod);
	}
	if (udc->gpiod)
		FUNC15(udc->gpiod, 0);

	udc->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(udc->clk))
		return FUNC2(udc->clk);

	retval = FUNC3(udc->clk);
	if (retval)
		return retval;

	udc->vbus_sensed = 0;

	the_controller = udc;
	FUNC19(pdev, udc);
	FUNC23(udc);

	/* irq setup after old hardware state is cleaned up */
	retval = FUNC11(&pdev->dev, udc->irq, pxa_udc_irq,
				  IRQF_SHARED, driver_name, udc);
	if (retval != 0) {
		FUNC5(udc->dev, "%s: can't get irq %i, err %d\n",
			driver_name, udc->irq, retval);
		goto err;
	}

	if (!FUNC1(udc->transceiver))
		FUNC26(udc->transceiver, &pxa27x_udc_phy);
	retval = FUNC24(&pdev->dev, &udc->gadget);
	if (retval)
		goto err_add_gadget;

	FUNC20(udc);
	if (FUNC21(udc))
		FUNC22(udc);
	return 0;

err_add_gadget:
	if (!FUNC1(udc->transceiver))
		FUNC27(udc->transceiver, &pxa27x_udc_phy);
err:
	FUNC4(udc->clk);
	return retval;
}