#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; int /*<<< orphan*/  regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_13__ {int /*<<< orphan*/ * of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct exynos_ehci_hcd {int /*<<< orphan*/  clk; int /*<<< orphan*/ * of_node; scalar_t__ legacy_phy; } ;
struct ehci_hcd {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EHCI_INSNREG00_ENABLE_DMA_BURST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct resource*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,struct exynos_ehci_hcd*) ; 
 int /*<<< orphan*/  exynos_ehci_hc_driver ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 struct ehci_hcd* FUNC16 (struct usb_hcd*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 struct exynos_ehci_hcd* FUNC21 (struct usb_hcd*) ; 
 int FUNC22 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC23 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct exynos_ehci_hcd *exynos_ehci;
	struct usb_hcd *hcd;
	struct ehci_hcd *ehci;
	struct resource *res;
	int irq;
	int err;

	/*
	 * Right now device-tree probed devices don't get dma_mask set.
	 * Since shared usb code relies on it, set it here for now.
	 * Once we move to full device tree support this will vanish off.
	 */
	err = FUNC11(&pdev->dev, FUNC0(32));
	if (err)
		return err;

	FUNC15(&pdev->dev);

	hcd = FUNC23(&exynos_ehci_hc_driver,
			     &pdev->dev, FUNC7(&pdev->dev));
	if (!hcd) {
		FUNC6(&pdev->dev, "Unable to create HCD\n");
		return -ENOMEM;
	}
	exynos_ehci = FUNC21(hcd);

	err = FUNC12(&pdev->dev, exynos_ehci);
	if (err)
		goto fail_clk;

	exynos_ehci->clk = FUNC9(&pdev->dev, "usbhost");

	if (FUNC2(exynos_ehci->clk)) {
		FUNC6(&pdev->dev, "Failed to get usbhost clock\n");
		err = FUNC3(exynos_ehci->clk);
		goto fail_clk;
	}

	err = FUNC5(exynos_ehci->clk);
	if (err)
		goto fail_clk;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC10(&pdev->dev, res);
	if (FUNC2(hcd->regs)) {
		err = FUNC3(hcd->regs);
		goto fail_io;
	}

	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC20(res);

	irq = FUNC17(pdev, 0);
	if (!irq) {
		FUNC6(&pdev->dev, "Failed to get IRQ\n");
		err = -ENODEV;
		goto fail_io;
	}

	err = FUNC14(&pdev->dev);
	if (err) {
		FUNC6(&pdev->dev, "Failed to enable USB phy\n");
		goto fail_io;
	}

	ehci = FUNC16(hcd);
	ehci->caps = hcd->regs;

	/*
	 * Workaround: reset of_node pointer to avoid conflict between legacy
	 * Exynos EHCI port subnodes and generic USB device bindings
	 */
	exynos_ehci->of_node = pdev->dev.of_node;
	if (exynos_ehci->legacy_phy)
		pdev->dev.of_node = NULL;

	/* DMA burst Enable */
	FUNC25(EHCI_INSNREG00_ENABLE_DMA_BURST, FUNC1(hcd->regs));

	err = FUNC22(hcd, irq, IRQF_SHARED);
	if (err) {
		FUNC6(&pdev->dev, "Failed to add USB HCD\n");
		goto fail_add_hcd;
	}
	FUNC8(hcd->self.controller);

	FUNC19(pdev, hcd);

	return 0;

fail_add_hcd:
	FUNC13(&pdev->dev);
	pdev->dev.of_node = exynos_ehci->of_node;
fail_io:
	FUNC4(exynos_ehci->clk);
fail_clk:
	FUNC24(hcd);
	return err;
}