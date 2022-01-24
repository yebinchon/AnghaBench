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
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_2__ self; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; struct clk* regs; } ;
struct spear_ohci {struct clk* clk; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct hc_driver {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct clk* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct clk* FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hc_driver ohci_spear_hc_driver ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 struct spear_ohci* FUNC14 (struct usb_hcd*) ; 
 int FUNC15 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC16 (struct hc_driver const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct hc_driver *driver = &ohci_spear_hc_driver;
	struct usb_hcd *hcd = NULL;
	struct clk *usbh_clk;
	struct spear_ohci *sohci_p;
	struct resource *res;
	int retval, irq;

	irq = FUNC11(pdev, 0);
	if (irq < 0) {
		retval = irq;
		goto fail;
	}

	/*
	 * Right now device-tree probed devices don't get dma_mask set.
	 * Since shared usb code relies on it, set it here for now.
	 * Once we have dma capability bindings this can go away.
	 */
	retval = FUNC10(&pdev->dev, FUNC0(32));
	if (retval)
		goto fail;

	usbh_clk = FUNC8(&pdev->dev, NULL);
	if (FUNC1(usbh_clk)) {
		FUNC5(&pdev->dev, "Error getting interface clock\n");
		retval = FUNC2(usbh_clk);
		goto fail;
	}

	hcd = FUNC16(driver, &pdev->dev, FUNC6(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto fail;
	}

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC9(&pdev->dev, res);
	if (FUNC1(hcd->regs)) {
		retval = FUNC2(hcd->regs);
		goto err_put_hcd;
	}

	hcd->rsrc_start = pdev->resource[0].start;
	hcd->rsrc_len = FUNC13(res);

	sohci_p = FUNC14(hcd);
	sohci_p->clk = usbh_clk;

	FUNC4(sohci_p->clk);

	retval = FUNC15(hcd, FUNC11(pdev, 0), 0);
	if (retval == 0) {
		FUNC7(hcd->self.controller);
		return retval;
	}

	FUNC3(sohci_p->clk);
err_put_hcd:
	FUNC17(hcd);
fail:
	FUNC5(&pdev->dev, "init fail, %d\n", retval);

	return retval;
}