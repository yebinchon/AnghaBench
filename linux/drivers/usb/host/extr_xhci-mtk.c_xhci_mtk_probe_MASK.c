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
struct xhci_hcd_mtk {int has_ippc; void* ippc_regs; int /*<<< orphan*/  hcd; int /*<<< orphan*/  u3p_dis_msk; int /*<<< orphan*/  lpm_support; void* vusb33; void* vbus; struct device* dev; } ;
struct xhci_hcd {int imod_interval; struct usb_hcd* shared_hcd; int /*<<< orphan*/  hcc_params; struct usb_hcd* main_hcd; } ;
struct usb_hcd {int can_do_streams; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; void* regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct hc_driver {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int*) ; 
 void* FUNC9 (struct device*,struct resource*) ; 
 struct xhci_hcd_mtk* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct device*,char*) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ) ; 
 struct xhci_hcd* FUNC13 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct xhci_hcd_mtk*) ; 
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
 int FUNC31 (struct xhci_hcd_mtk*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC32 (struct xhci_hcd_mtk*) ; 
 int FUNC33 (struct xhci_hcd_mtk*) ; 
 int FUNC34 (struct xhci_hcd_mtk*) ; 
 struct hc_driver xhci_mtk_hc_driver ; 
 int /*<<< orphan*/  FUNC35 (struct xhci_hcd_mtk*) ; 
 int FUNC36 (struct xhci_hcd_mtk*) ; 
 int /*<<< orphan*/  FUNC37 (struct xhci_hcd_mtk*) ; 

__attribute__((used)) static int FUNC38(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct xhci_hcd_mtk *mtk;
	const struct hc_driver *driver;
	struct xhci_hcd *xhci;
	struct resource *res;
	struct usb_hcd *hcd;
	int ret = -ENODEV;
	int irq;

	if (FUNC28())
		return -ENODEV;

	driver = &xhci_mtk_hc_driver;
	mtk = FUNC10(dev, sizeof(*mtk), GFP_KERNEL);
	if (!mtk)
		return -ENOMEM;

	mtk->dev = dev;
	mtk->vbus = FUNC11(dev, "vbus");
	if (FUNC2(mtk->vbus)) {
		FUNC4(dev, "fail to get vbus\n");
		return FUNC3(mtk->vbus);
	}

	mtk->vusb33 = FUNC11(dev, "vusb33");
	if (FUNC2(mtk->vusb33)) {
		FUNC4(dev, "fail to get vusb33\n");
		return FUNC3(mtk->vusb33);
	}

	ret = FUNC34(mtk);
	if (ret)
		return ret;

	mtk->lpm_support = FUNC14(node, "usb3-lpm-capable");
	/* optional property, ignore the error if it does not exist */
	FUNC15(node, "mediatek,u3p-dis-msk",
			     &mtk->u3p_dis_msk);

	ret = FUNC31(mtk, node);
	if (ret) {
		FUNC4(dev, "failed to parse uwk property\n");
		return ret;
	}

	FUNC21(dev);
	FUNC22(dev);
	FUNC6(dev);

	ret = FUNC36(mtk);
	if (ret)
		goto disable_pm;

	ret = FUNC33(mtk);
	if (ret)
		goto disable_ldos;

	irq = FUNC17(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto disable_clk;
	}

	/* Initialize dma_mask and coherent_dma_mask to 32-bits */
	ret = FUNC12(dev, FUNC0(32));
	if (ret)
		goto disable_clk;

	hcd = FUNC26(driver, dev, FUNC5(dev));
	if (!hcd) {
		ret = -ENOMEM;
		goto disable_clk;
	}

	/*
	 * USB 2.0 roothub is stored in the platform_device.
	 * Swap it with mtk HCD.
	 */
	mtk->hcd = FUNC16(pdev);
	FUNC19(pdev, mtk);

	res = FUNC18(pdev, IORESOURCE_MEM, "mac");
	hcd->regs = FUNC9(dev, res);
	if (FUNC2(hcd->regs)) {
		ret = FUNC3(hcd->regs);
		goto put_usb2_hcd;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC24(res);

	res = FUNC18(pdev, IORESOURCE_MEM, "ippc");
	if (res) {	/* ippc register is optional */
		mtk->ippc_regs = FUNC9(dev, res);
		if (FUNC2(mtk->ippc_regs)) {
			ret = FUNC3(mtk->ippc_regs);
			goto put_usb2_hcd;
		}
		mtk->has_ippc = true;
	} else {
		mtk->has_ippc = false;
	}

	FUNC7(dev, true);

	xhci = FUNC13(hcd);
	xhci->main_hcd = hcd;

	/*
	 * imod_interval is the interrupt moderation value in nanoseconds.
	 * The increment interval is 8 times as much as that defined in
	 * the xHCI spec on MTK's controller.
	 */
	xhci->imod_interval = 5000;
	FUNC8(dev, "imod-interval-ns", &xhci->imod_interval);

	xhci->shared_hcd = FUNC27(driver, dev,
			FUNC5(dev), hcd);
	if (!xhci->shared_hcd) {
		ret = -ENOMEM;
		goto disable_device_wakeup;
	}

	ret = FUNC25(hcd, irq, IRQF_SHARED);
	if (ret)
		goto put_usb3_hcd;

	if (FUNC1(xhci->hcc_params) >= 4)
		xhci->shared_hcd->can_do_streams = 1;

	ret = FUNC25(xhci->shared_hcd, irq, IRQF_SHARED);
	if (ret)
		goto dealloc_usb2_hcd;

	return 0;

dealloc_usb2_hcd:
	FUNC30(hcd);

put_usb3_hcd:
	FUNC37(mtk);
	FUNC29(xhci->shared_hcd);

disable_device_wakeup:
	FUNC7(dev, false);

put_usb2_hcd:
	FUNC29(hcd);

disable_clk:
	FUNC32(mtk);

disable_ldos:
	FUNC35(mtk);

disable_pm:
	FUNC23(dev);
	FUNC20(dev);
	return ret;
}