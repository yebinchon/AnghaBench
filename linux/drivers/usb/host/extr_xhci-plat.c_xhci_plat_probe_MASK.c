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
struct xhci_plat_priv {int dummy; } ;
struct xhci_hcd {int imod_interval; int /*<<< orphan*/ * reg_clk; int /*<<< orphan*/ * clk; struct usb_hcd* shared_hcd; int /*<<< orphan*/  hcc_params; int /*<<< orphan*/  quirks; struct usb_hcd* main_hcd; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int can_do_streams; int /*<<< orphan*/ * usb_phy; int /*<<< orphan*/  tpl_support; TYPE_1__ self; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/ * regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/  dma_mask; int /*<<< orphan*/ * bus; int /*<<< orphan*/  fwnode; } ;
struct platform_device {struct device dev; } ;
struct hc_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  XHCI_BROKEN_PORT_PED ; 
 int /*<<< orphan*/  XHCI_HW_LPM_DISABLE ; 
 int /*<<< orphan*/  XHCI_LPM_SUPPORT ; 
 void* FUNC5 (struct hc_driver const*,struct device*,struct device*,int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 scalar_t__ FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (struct device*,struct resource*) ; 
 int /*<<< orphan*/ * FUNC15 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 struct xhci_hcd* FUNC18 (struct usb_hcd*) ; 
 struct xhci_plat_priv* FUNC19 (struct usb_hcd*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 struct xhci_plat_priv* FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  FUNC30 (struct device*) ; 
 int /*<<< orphan*/  FUNC31 (struct device*) ; 
 int /*<<< orphan*/  FUNC32 (struct resource*) ; 
 int FUNC33 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 () ; 
 int FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC38 (struct usb_hcd*) ; 
 struct hc_driver xhci_plat_hc_driver ; 

__attribute__((used)) static int FUNC39(struct platform_device *pdev)
{
	const struct xhci_plat_priv *priv_match;
	const struct hc_driver	*driver;
	struct device		*sysdev, *tmpdev;
	struct xhci_hcd		*xhci;
	struct resource         *res;
	struct usb_hcd		*hcd;
	int			ret;
	int			irq;

	if (FUNC34())
		return -ENODEV;

	driver = &xhci_plat_hc_driver;

	irq = FUNC24(pdev, 0);
	if (irq < 0)
		return irq;

	/*
	 * sysdev must point to a device that is known to the system firmware
	 * or PCI hardware. We handle these three cases here:
	 * 1. xhci_plat comes from firmware
	 * 2. xhci_plat is child of a device from firmware (dwc3-plat)
	 * 3. xhci_plat is grandchild of a pci device (dwc3-pci)
	 */
	for (sysdev = &pdev->dev; sysdev; sysdev = sysdev->parent) {
		if (FUNC21(sysdev->fwnode) ||
			FUNC20(sysdev->fwnode))
			break;
#ifdef CONFIG_PCI
		else if (sysdev->bus == &pci_bus_type)
			break;
#endif
	}

	if (!sysdev)
		sysdev = &pdev->dev;

	/* Try to set 64-bit DMA first */
	if (FUNC4(!sysdev->dma_mask))
		/* Platform did not initialize dma_mask */
		ret = FUNC16(sysdev,
						   FUNC0(64));
	else
		ret = FUNC17(sysdev, FUNC0(64));

	/* If seting 64-bit DMA mask fails, fall back to 32-bit DMA mask */
	if (ret) {
		ret = FUNC17(sysdev, FUNC0(32));
		if (ret)
			return ret;
	}

	FUNC31(&pdev->dev);
	FUNC27(&pdev->dev);
	FUNC29(&pdev->dev);

	hcd = FUNC5(driver, sysdev, &pdev->dev,
			       FUNC8(&pdev->dev), NULL);
	if (!hcd) {
		ret = -ENOMEM;
		goto disable_runtime;
	}

	res = FUNC25(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC14(&pdev->dev, res);
	if (FUNC2(hcd->regs)) {
		ret = FUNC3(hcd->regs);
		goto put_hcd;
	}

	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC32(res);

	xhci = FUNC18(hcd);

	/*
	 * Not all platforms have clks so it is not an error if the
	 * clock do not exist.
	 */
	xhci->reg_clk = FUNC13(&pdev->dev, "reg");
	if (FUNC2(xhci->reg_clk)) {
		ret = FUNC3(xhci->reg_clk);
		goto put_hcd;
	}

	ret = FUNC7(xhci->reg_clk);
	if (ret)
		goto put_hcd;

	xhci->clk = FUNC13(&pdev->dev, NULL);
	if (FUNC2(xhci->clk)) {
		ret = FUNC3(xhci->clk);
		goto disable_reg_clk;
	}

	ret = FUNC7(xhci->clk);
	if (ret)
		goto disable_reg_clk;

	priv_match = FUNC22(&pdev->dev);
	if (priv_match) {
		struct xhci_plat_priv *priv = FUNC19(hcd);

		/* Just copy data for now */
		if (priv_match)
			*priv = *priv_match;
	}

	FUNC12(hcd->self.controller);

	xhci->main_hcd = hcd;
	xhci->shared_hcd = FUNC5(driver, sysdev, &pdev->dev,
			FUNC8(&pdev->dev), hcd);
	if (!xhci->shared_hcd) {
		ret = -ENOMEM;
		goto disable_clk;
	}

	/* imod_interval is the interrupt moderation value in nanoseconds. */
	xhci->imod_interval = 40000;

	/* Iterate over all parent nodes for finding quirks */
	for (tmpdev = &pdev->dev; tmpdev; tmpdev = tmpdev->parent) {

		if (FUNC10(tmpdev, "usb2-lpm-disable"))
			xhci->quirks |= XHCI_HW_LPM_DISABLE;

		if (FUNC10(tmpdev, "usb3-lpm-capable"))
			xhci->quirks |= XHCI_LPM_SUPPORT;

		if (FUNC10(tmpdev, "quirk-broken-port-ped"))
			xhci->quirks |= XHCI_BROKEN_PORT_PED;

		FUNC11(tmpdev, "imod-interval-ns",
					 &xhci->imod_interval);
	}

	hcd->usb_phy = FUNC15(sysdev, "usb-phy", 0);
	if (FUNC2(hcd->usb_phy)) {
		ret = FUNC3(hcd->usb_phy);
		if (ret == -EPROBE_DEFER)
			goto put_usb3_hcd;
		hcd->usb_phy = NULL;
	} else {
		ret = FUNC35(hcd->usb_phy);
		if (ret)
			goto put_usb3_hcd;
	}

	hcd->tpl_support = FUNC23(sysdev->of_node);
	xhci->shared_hcd->tpl_support = hcd->tpl_support;
	ret = FUNC33(hcd, irq, IRQF_SHARED);
	if (ret)
		goto disable_usb_phy;

	if (FUNC1(xhci->hcc_params) >= 4)
		xhci->shared_hcd->can_do_streams = 1;

	ret = FUNC33(xhci->shared_hcd, irq, IRQF_SHARED);
	if (ret)
		goto dealloc_usb2_hcd;

	FUNC9(&pdev->dev);
	FUNC30(&pdev->dev);

	/*
	 * Prevent runtime pm from being on as default, users should enable
	 * runtime pm using power/control in sysfs.
	 */
	FUNC28(&pdev->dev);

	return 0;


dealloc_usb2_hcd:
	FUNC38(hcd);

disable_usb_phy:
	FUNC36(hcd->usb_phy);

put_usb3_hcd:
	FUNC37(xhci->shared_hcd);

disable_clk:
	FUNC6(xhci->clk);

disable_reg_clk:
	FUNC6(xhci->reg_clk);

put_hcd:
	FUNC37(hcd);

disable_runtime:
	FUNC30(&pdev->dev);
	FUNC26(&pdev->dev);

	return ret;
}