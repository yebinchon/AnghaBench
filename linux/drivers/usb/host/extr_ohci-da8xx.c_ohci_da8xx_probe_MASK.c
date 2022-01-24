#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/ * regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct da8xx_ohci_hcd {int /*<<< orphan*/ * oc_gpio; int /*<<< orphan*/ * vbus_reg; int /*<<< orphan*/ * usb11_phy; int /*<<< orphan*/ * usb11_clk; struct usb_hcd* hcd; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct device*,struct resource*) ; 
 int /*<<< orphan*/ * FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,char*) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da8xx_ohci_hcd*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ohci_da8xx_hc_driver ; 
 int /*<<< orphan*/  ohci_da8xx_oc_thread ; 
 int FUNC12 (struct usb_hcd*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 struct da8xx_ohci_hcd* FUNC16 (struct usb_hcd*) ; 
 int FUNC17 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC18 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct da8xx_ohci_hcd *da8xx_ohci;
	struct device *dev = &pdev->dev;
	int error, hcd_irq, oc_irq;
	struct usb_hcd	*hcd;
	struct resource *mem;

	hcd = FUNC18(&ohci_da8xx_hc_driver, dev, FUNC3(dev));
	if (!hcd)
		return -ENOMEM;

	da8xx_ohci = FUNC16(hcd);
	da8xx_ohci->hcd = hcd;

	da8xx_ohci->usb11_clk = FUNC5(dev, NULL);
	if (FUNC0(da8xx_ohci->usb11_clk)) {
		error = FUNC1(da8xx_ohci->usb11_clk);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get clock.\n");
		goto err;
	}

	da8xx_ohci->usb11_phy = FUNC8(dev, "usb-phy");
	if (FUNC0(da8xx_ohci->usb11_phy)) {
		error = FUNC1(da8xx_ohci->usb11_phy);
		if (error != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get phy.\n");
		goto err;
	}

	da8xx_ohci->vbus_reg = FUNC9(dev, "vbus");
	if (FUNC0(da8xx_ohci->vbus_reg)) {
		error = FUNC1(da8xx_ohci->vbus_reg);
		if (error == -ENODEV) {
			da8xx_ohci->vbus_reg = NULL;
		} else if (error == -EPROBE_DEFER) {
			goto err;
		} else {
			FUNC2(dev, "Failed to get regulator\n");
			goto err;
		}
	}

	da8xx_ohci->oc_gpio = FUNC6(dev, "oc", GPIOD_IN);
	if (FUNC0(da8xx_ohci->oc_gpio))
		goto err;

	if (da8xx_ohci->oc_gpio) {
		oc_irq = FUNC11(da8xx_ohci->oc_gpio);
		if (oc_irq < 0)
			goto err;

		error = FUNC10(dev, oc_irq, NULL,
				ohci_da8xx_oc_thread, IRQF_TRIGGER_RISING |
				IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				"OHCI over-current indicator", da8xx_ohci);
		if (error)
			goto err;
	}

	mem = FUNC14(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC7(dev, mem);
	if (FUNC0(hcd->regs)) {
		error = FUNC1(hcd->regs);
		goto err;
	}
	hcd->rsrc_start = mem->start;
	hcd->rsrc_len = FUNC15(mem);

	hcd_irq = FUNC13(pdev, 0);
	if (hcd_irq < 0) {
		error = -ENODEV;
		goto err;
	}

	error = FUNC17(hcd, hcd_irq, 0);
	if (error)
		goto err;

	FUNC4(hcd->self.controller);

	error = FUNC12(hcd);
	if (error)
		goto err_remove_hcd;

	return 0;

err_remove_hcd:
	FUNC20(hcd);
err:
	FUNC19(hcd);
	return error;
}