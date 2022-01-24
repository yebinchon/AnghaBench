#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_12__ {int /*<<< orphan*/ * of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct exynos_ohci_hcd {int /*<<< orphan*/  clk; int /*<<< orphan*/ * of_node; scalar_t__ legacy_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct resource*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,struct exynos_ohci_hcd*) ; 
 int /*<<< orphan*/  exynos_ohci_hc_driver ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 
 struct exynos_ohci_hcd* FUNC18 (struct usb_hcd*) ; 
 int FUNC19 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC20 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct exynos_ohci_hcd *exynos_ohci;
	struct usb_hcd *hcd;
	struct resource *res;
	int irq;
	int err;

	/*
	 * Right now device-tree probed devices don't get dma_mask set.
	 * Since shared usb code relies on it, set it here for now.
	 * Once we move to full device tree support this will vanish off.
	 */
	err = FUNC10(&pdev->dev, FUNC0(32));
	if (err)
		return err;

	hcd = FUNC20(&exynos_ohci_hc_driver,
				&pdev->dev, FUNC6(&pdev->dev));
	if (!hcd) {
		FUNC5(&pdev->dev, "Unable to create HCD\n");
		return -ENOMEM;
	}

	exynos_ohci = FUNC18(hcd);

	err = FUNC11(&pdev->dev, exynos_ohci);
	if (err)
		goto fail_clk;

	exynos_ohci->clk = FUNC8(&pdev->dev, "usbhost");

	if (FUNC1(exynos_ohci->clk)) {
		FUNC5(&pdev->dev, "Failed to get usbhost clock\n");
		err = FUNC2(exynos_ohci->clk);
		goto fail_clk;
	}

	err = FUNC4(exynos_ohci->clk);
	if (err)
		goto fail_clk;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC9(&pdev->dev, res);
	if (FUNC1(hcd->regs)) {
		err = FUNC2(hcd->regs);
		goto fail_io;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC17(res);

	irq = FUNC14(pdev, 0);
	if (!irq) {
		FUNC5(&pdev->dev, "Failed to get IRQ\n");
		err = -ENODEV;
		goto fail_io;
	}

	FUNC16(pdev, hcd);

	err = FUNC13(&pdev->dev);
	if (err) {
		FUNC5(&pdev->dev, "Failed to enable USB phy\n");
		goto fail_io;
	}

	/*
	 * Workaround: reset of_node pointer to avoid conflict between legacy
	 * Exynos OHCI port subnodes and generic USB device bindings
	 */
	exynos_ohci->of_node = pdev->dev.of_node;
	if (exynos_ohci->legacy_phy)
		pdev->dev.of_node = NULL;

	err = FUNC19(hcd, irq, IRQF_SHARED);
	if (err) {
		FUNC5(&pdev->dev, "Failed to add USB HCD\n");
		goto fail_add_hcd;
	}
	FUNC7(hcd->self.controller);
	return 0;

fail_add_hcd:
	FUNC12(&pdev->dev);
	pdev->dev.of_node = exynos_ohci->of_node;
fail_io:
	FUNC3(exynos_ohci->clk);
fail_clk:
	FUNC21(hcd);
	return err;
}