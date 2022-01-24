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
struct TYPE_3__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; struct clk* regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct spear_ehci {struct clk* clk; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hc_driver {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {struct clk* caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
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
 struct hc_driver ehci_spear_hc_driver ; 
 TYPE_2__* FUNC11 (struct usb_hcd*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 struct spear_ehci* FUNC15 (struct usb_hcd*) ; 
 int FUNC16 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC17 (struct hc_driver const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct usb_hcd *hcd ;
	struct spear_ehci *sehci;
	struct resource *res;
	struct clk *usbh_clk;
	const struct hc_driver *driver = &ehci_spear_hc_driver;
	int irq, retval;

	if (FUNC18())
		return -ENODEV;

	irq = FUNC12(pdev, 0);
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

	hcd = FUNC17(driver, &pdev->dev, FUNC6(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto fail;
	}

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC9(&pdev->dev, res);
	if (FUNC1(hcd->regs)) {
		retval = FUNC2(hcd->regs);
		goto err_put_hcd;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC14(res);

	sehci = FUNC15(hcd);
	sehci->clk = usbh_clk;

	/* registers start at offset 0x0 */
	FUNC11(hcd)->caps = hcd->regs;

	FUNC4(sehci->clk);
	retval = FUNC16(hcd, irq, IRQF_SHARED);
	if (retval)
		goto err_stop_ehci;

	FUNC7(hcd->self.controller);
	return retval;

err_stop_ehci:
	FUNC3(sehci->clk);
err_put_hcd:
	FUNC19(hcd);
fail:
	FUNC5(&pdev->dev, "init fail, %d\n", retval);

	return retval ;
}