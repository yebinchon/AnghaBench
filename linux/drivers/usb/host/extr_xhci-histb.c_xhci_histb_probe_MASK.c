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
struct xhci_hcd_histb {struct usb_hcd* hcd; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  soft_reset; struct device* dev; } ;
struct xhci_hcd {int imod_interval; struct usb_hcd* shared_hcd; int /*<<< orphan*/  hcc_params; int /*<<< orphan*/  quirks; struct usb_hcd* main_hcd; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int can_do_streams; TYPE_1__ self; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hc_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_HW_LPM_DISABLE ; 
 int /*<<< orphan*/  XHCI_LPM_SUPPORT ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xhci_hcd_histb*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 scalar_t__ FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct resource*) ; 
 struct xhci_hcd_histb* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ) ; 
 struct xhci_hcd* FUNC15 (struct usb_hcd*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct resource*) ; 
 int FUNC25 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC26 (struct hc_driver const*,struct device*,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC27 (struct hc_driver const*,struct device*,int /*<<< orphan*/ ,struct usb_hcd*) ; 
 scalar_t__ FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC30 (struct usb_hcd*) ; 
 int FUNC31 (struct xhci_hcd_histb*) ; 
 struct hc_driver xhci_histb_hc_driver ; 
 int /*<<< orphan*/  FUNC32 (struct xhci_hcd_histb*) ; 
 int FUNC33 (struct xhci_hcd_histb*) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct xhci_hcd_histb *histb;
	const struct hc_driver *driver;
	struct usb_hcd *hcd;
	struct xhci_hcd *xhci;
	struct resource *res;
	int irq;
	int ret = -ENODEV;

	if (FUNC28())
		return -ENODEV;

	driver = &xhci_histb_hc_driver;
	histb = FUNC12(dev, sizeof(*histb), GFP_KERNEL);
	if (!histb)
		return -ENOMEM;

	histb->dev = dev;

	irq = FUNC16(pdev, 0);
	if (irq < 0)
		return irq;

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	histb->ctrl = FUNC11(&pdev->dev, res);
	if (FUNC2(histb->ctrl))
		return FUNC3(histb->ctrl);

	ret = FUNC31(histb);
	if (ret)
		return ret;

	histb->soft_reset = FUNC13(dev, "soft");
	if (FUNC2(histb->soft_reset)) {
		FUNC4(dev, "failed to get soft reset\n");
		return FUNC3(histb->soft_reset);
	}

	FUNC19(dev);
	FUNC21(dev);
	FUNC7(dev);

	/* Initialize dma_mask and coherent_dma_mask to 32-bits */
	ret = FUNC14(dev, FUNC0(32));
	if (ret)
		return ret;

	hcd = FUNC26(driver, dev, FUNC5(dev));
	if (!hcd) {
		ret = -ENOMEM;
		goto disable_pm;
	}

	hcd->regs = histb->ctrl;
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC24(res);

	histb->hcd = hcd;
	FUNC6(hcd->self.controller, histb);

	ret = FUNC33(histb);
	if (ret)
		goto put_hcd;

	xhci = FUNC15(hcd);

	FUNC10(hcd->self.controller);

	xhci->main_hcd = hcd;
	xhci->shared_hcd = FUNC27(driver, dev, FUNC5(dev),
						 hcd);
	if (!xhci->shared_hcd) {
		ret = -ENOMEM;
		goto disable_host;
	}

	if (FUNC8(dev, "usb2-lpm-disable"))
		xhci->quirks |= XHCI_HW_LPM_DISABLE;

	if (FUNC8(dev, "usb3-lpm-capable"))
		xhci->quirks |= XHCI_LPM_SUPPORT;

	/* imod_interval is the interrupt moderation value in nanoseconds. */
	xhci->imod_interval = 40000;
	FUNC9(dev, "imod-interval-ns",
				 &xhci->imod_interval);

	ret = FUNC25(hcd, irq, IRQF_SHARED);
	if (ret)
		goto put_usb3_hcd;

	if (FUNC1(xhci->hcc_params) >= 4)
		xhci->shared_hcd->can_do_streams = 1;

	ret = FUNC25(xhci->shared_hcd, irq, IRQF_SHARED);
	if (ret)
		goto dealloc_usb2_hcd;

	FUNC7(dev);
	FUNC22(dev);

	/*
	 * Prevent runtime pm from being on as default, users should enable
	 * runtime pm using power/control in sysfs.
	 */
	FUNC20(dev);

	return 0;

dealloc_usb2_hcd:
	FUNC30(hcd);
put_usb3_hcd:
	FUNC29(xhci->shared_hcd);
disable_host:
	FUNC32(histb);
put_hcd:
	FUNC29(hcd);
disable_pm:
	FUNC23(dev);
	FUNC18(dev);

	return ret;
}