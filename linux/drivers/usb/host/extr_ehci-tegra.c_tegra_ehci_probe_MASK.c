#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct usb_phy {TYPE_2__* otg; } ;
struct usb_otg {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {int has_tt; int skip_phy_initialization; struct usb_phy* usb_phy; TYPE_3__ self; struct usb_phy* regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct tegra_ehci_soc_config {int /*<<< orphan*/  has_hostpc; } ;
struct tegra_ehci_hcd {struct usb_phy* clk; int /*<<< orphan*/  needs_double_reset; struct usb_phy* rst; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct tegra_ehci_soc_config* data; } ;
struct ehci_hcd {int /*<<< orphan*/  has_hostpc; struct usb_phy* caps; scalar_t__ priv; } ;
struct TYPE_15__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct usb_phy*) ; 
 int FUNC2 (struct usb_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_phy*) ; 
 int FUNC4 (struct usb_phy*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct usb_phy* FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct usb_phy* FUNC9 (TYPE_1__*,struct resource*) ; 
 TYPE_2__* FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct usb_phy* FUNC11 (TYPE_1__*,char*) ; 
 struct usb_phy* FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 
 struct ehci_hcd* FUNC15 (struct usb_hcd*) ; 
 struct of_device_id* FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC22 (struct resource*) ; 
 int /*<<< orphan*/  tegra_ehci_hc_driver ; 
 int /*<<< orphan*/  tegra_ehci_of_match ; 
 int FUNC23 (struct platform_device*) ; 
 int FUNC24 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC25 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct usb_phy*) ; 
 int FUNC27 (struct usb_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_phy*) ; 
 int /*<<< orphan*/  FUNC29 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	const struct of_device_id *match;
	const struct tegra_ehci_soc_config *soc_config;
	struct resource *res;
	struct usb_hcd *hcd;
	struct ehci_hcd *ehci;
	struct tegra_ehci_hcd *tegra;
	int err = 0;
	int irq;
	struct usb_phy *u_phy;

	match = FUNC16(tegra_ehci_of_match, &pdev->dev);
	if (!match) {
		FUNC5(&pdev->dev, "Error: No device match found\n");
		return -ENODEV;
	}
	soc_config = match->data;

	/* Right now device-tree probed devices don't get dma_mask set.
	 * Since shared usb code relies on it, set it here for now.
	 * Once we have dma capability bindings this can go away.
	 */
	err = FUNC13(&pdev->dev, FUNC0(32));
	if (err)
		return err;

	hcd = FUNC25(&tegra_ehci_hc_driver, &pdev->dev,
					FUNC6(&pdev->dev));
	if (!hcd) {
		FUNC5(&pdev->dev, "Unable to create HCD\n");
		return -ENOMEM;
	}
	FUNC21(pdev, hcd);
	ehci = FUNC15(hcd);
	tegra = (struct tegra_ehci_hcd *)ehci->priv;

	hcd->has_tt = 1;

	tegra->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC1(tegra->clk)) {
		FUNC5(&pdev->dev, "Can't get ehci clock\n");
		err = FUNC2(tegra->clk);
		goto cleanup_hcd_create;
	}

	tegra->rst = FUNC11(&pdev->dev, "usb");
	if (FUNC1(tegra->rst)) {
		FUNC5(&pdev->dev, "Can't get ehci reset\n");
		err = FUNC2(tegra->rst);
		goto cleanup_hcd_create;
	}

	err = FUNC4(tegra->clk);
	if (err)
		goto cleanup_hcd_create;

	err = FUNC23(pdev);
	if (err) {
		FUNC5(&pdev->dev, "Failed to reset controller\n");
		goto cleanup_clk_en;
	}

	u_phy = FUNC12(&pdev->dev, "nvidia,phy", 0);
	if (FUNC1(u_phy)) {
		err = -EPROBE_DEFER;
		goto cleanup_clk_en;
	}
	hcd->usb_phy = u_phy;
	hcd->skip_phy_initialization = 1;

	tegra->needs_double_reset = FUNC17(pdev->dev.of_node,
		"nvidia,needs-double-reset");

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	hcd->regs = FUNC9(&pdev->dev, res);
	if (FUNC1(hcd->regs)) {
		err = FUNC2(hcd->regs);
		goto cleanup_clk_en;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC22(res);

	ehci->caps = hcd->regs + 0x100;
	ehci->has_hostpc = soc_config->has_hostpc;

	err = FUNC26(hcd->usb_phy);
	if (err) {
		FUNC5(&pdev->dev, "Failed to initialize phy\n");
		goto cleanup_clk_en;
	}

	u_phy->otg = FUNC10(&pdev->dev, sizeof(struct usb_otg),
			     GFP_KERNEL);
	if (!u_phy->otg) {
		err = -ENOMEM;
		goto cleanup_phy;
	}
	u_phy->otg->host = FUNC14(hcd);

	err = FUNC27(hcd->usb_phy, 0);
	if (err) {
		FUNC5(&pdev->dev, "Failed to power on the phy\n");
		goto cleanup_phy;
	}

	irq = FUNC19(pdev, 0);
	if (!irq) {
		FUNC5(&pdev->dev, "Failed to get IRQ\n");
		err = -ENODEV;
		goto cleanup_phy;
	}

	FUNC18(u_phy->otg, &hcd->self);

	err = FUNC24(hcd, irq, IRQF_SHARED);
	if (err) {
		FUNC5(&pdev->dev, "Failed to add USB HCD\n");
		goto cleanup_otg_set_host;
	}
	FUNC7(hcd->self.controller);

	return err;

cleanup_otg_set_host:
	FUNC18(u_phy->otg, NULL);
cleanup_phy:
	FUNC28(hcd->usb_phy);
cleanup_clk_en:
	FUNC3(tegra->clk);
cleanup_hcd_create:
	FUNC29(hcd);
	return err;
}