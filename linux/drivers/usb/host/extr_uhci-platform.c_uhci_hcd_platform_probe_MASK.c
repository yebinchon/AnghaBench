#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_2__ self; int /*<<< orphan*/  regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct uhci_hcd {int is_aspeed; int /*<<< orphan*/  clk; int /*<<< orphan*/  rh_numports; int /*<<< orphan*/  regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__* resource; TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  start; } ;

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
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct resource*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct uhci_hcd* FUNC11 (struct usb_hcd*) ; 
 scalar_t__ FUNC12 (struct device_node*,char*) ; 
 scalar_t__ FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  uhci_platform_hc_driver ; 
 int FUNC16 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC17 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct usb_hcd *hcd;
	struct uhci_hcd	*uhci;
	struct resource *res;
	int ret;

	if (FUNC18())
		return -ENODEV;

	/*
	 * Right now device-tree probed devices don't get dma_mask set.
	 * Since shared usb code relies on it, set it here for now.
	 * Once we have dma capability bindings this can go away.
	 */
	ret = FUNC10(&pdev->dev, FUNC0(32));
	if (ret)
		return ret;

	hcd = FUNC17(&uhci_platform_hc_driver, &pdev->dev,
			pdev->name);
	if (!hcd)
		return -ENOMEM;

	uhci = FUNC11(hcd);

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC9(&pdev->dev, res);
	if (FUNC1(hcd->regs)) {
		ret = FUNC2(hcd->regs);
		goto err_rmr;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC15(res);

	uhci->regs = hcd->regs;

	/* Grab some things from the device-tree */
	if (np) {
		u32 num_ports;

		if (FUNC13(np, "#ports", &num_ports) == 0) {
			uhci->rh_numports = num_ports;
			FUNC6(&pdev->dev,
				"Detected %d ports from device-tree\n",
				num_ports);
		}
		if (FUNC12(np, "aspeed,ast2400-uhci") ||
		    FUNC12(np, "aspeed,ast2500-uhci")) {
			uhci->is_aspeed = 1;
			FUNC6(&pdev->dev,
				 "Enabled Aspeed implementation workarounds\n");
		}
	}

	/* Get and enable clock if any specified */
	uhci->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC1(uhci->clk)) {
		ret = FUNC2(uhci->clk);
		goto err_rmr;
	}
	ret = FUNC4(uhci->clk);
	if (ret) {
		FUNC5(&pdev->dev, "Error couldn't enable clock (%d)\n", ret);
		goto err_rmr;
	}

	ret = FUNC16(hcd, pdev->resource[1].start, IRQF_SHARED);
	if (ret)
		goto err_clk;

	FUNC7(hcd->self.controller);
	return 0;

err_clk:
	FUNC3(uhci->clk);
err_rmr:
	FUNC19(hcd);

	return ret;
}