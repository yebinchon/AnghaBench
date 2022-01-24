#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_28__ ;
typedef  struct TYPE_37__   TYPE_21__ ;
typedef  struct TYPE_36__   TYPE_1__ ;

/* Type definitions */
struct xhci_hcd {TYPE_3__* shared_hcd; } ;
struct tegra_xusb_mbox_msg {scalar_t__ data; int /*<<< orphan*/  cmd; } ;
struct tegra_xusb_fw_header {int dummy; } ;
struct tegra_xusb {scalar_t__ xhci_irq; scalar_t__ mbox_irq; unsigned int num_phys; struct phy* padctl; TYPE_3__* hcd; int /*<<< orphan*/  lock; struct phy* regs; TYPE_6__* dev; struct phy** phys; TYPE_21__* soc; TYPE_28__* supplies; struct phy* host_rst; struct phy* host_clk; struct phy* ss_rst; struct phy* ss_clk; struct phy* pll_e; struct phy* clk_m; struct phy* pll_u_480m; struct phy* fs_src_clk; struct phy* hs_src_clk; struct phy* ss_src_clk; struct phy* falcon_clk; struct phy* ipfs_base; struct phy* fpci_base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_41__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct phy {int dummy; } ;
typedef  int /*<<< orphan*/  prop ;
struct TYPE_39__ {int /*<<< orphan*/  controller; } ;
struct TYPE_40__ {TYPE_2__ self; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; struct phy* regs; } ;
struct TYPE_38__ {int /*<<< orphan*/  supply; } ;
struct TYPE_37__ {unsigned int num_supplies; unsigned int num_types; TYPE_1__* phy_types; int /*<<< orphan*/ * supply_names; scalar_t__ has_ipfs; } ;
struct TYPE_36__ {unsigned int num; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  MBOX_CMD_MSG_ENABLED ; 
 int FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_XUSBA ; 
 int /*<<< orphan*/  TEGRA_POWERGATE_XUSBC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_6__*,char*) ; 
 void* FUNC8 (TYPE_6__*,struct resource*) ; 
 void* FUNC9 (TYPE_6__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct tegra_xusb* FUNC10 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 struct phy* FUNC11 (TYPE_6__*,char*) ; 
 int FUNC12 (TYPE_6__*,unsigned int,TYPE_28__*) ; 
 int FUNC13 (TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_xusb*) ; 
 void* FUNC14 (TYPE_6__*,char*) ; 
 int FUNC15 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 struct xhci_hcd* FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_21__* FUNC20 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC22 (struct platform_device*,int) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct tegra_xusb*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_6__*) ; 
 scalar_t__ FUNC27 (TYPE_6__*) ; 
 int FUNC28 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC30 (struct resource*) ; 
 int /*<<< orphan*/  FUNC31 (char*,int,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ,struct phy*,struct phy*) ; 
 int /*<<< orphan*/  tegra_xhci_hc_driver ; 
 int /*<<< orphan*/  FUNC34 (struct tegra_xusb*,struct resource*) ; 
 int FUNC35 (struct tegra_xusb*) ; 
 int /*<<< orphan*/  tegra_xusb_mbox_irq ; 
 int FUNC36 (struct tegra_xusb*,struct tegra_xusb_mbox_msg*) ; 
 int /*<<< orphan*/  tegra_xusb_mbox_thread ; 
 struct phy* FUNC37 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC38 (struct phy*) ; 
 int FUNC39 (TYPE_6__*,struct tegra_xusb*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_6__*,struct tegra_xusb*) ; 
 int FUNC41 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_6__*) ; 
 int FUNC43 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC44 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC45 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC48(struct platform_device *pdev)
{
	struct tegra_xusb_mbox_msg msg;
	struct resource *res, *regs;
	struct tegra_xusb *tegra;
	struct xhci_hcd *xhci;
	unsigned int i, j, k;
	struct phy *phy;
	int err;

	FUNC0(sizeof(struct tegra_xusb_fw_header) != 256);

	tegra = FUNC10(&pdev->dev, sizeof(*tegra), GFP_KERNEL);
	if (!tegra)
		return -ENOMEM;

	tegra->soc = FUNC20(&pdev->dev);
	FUNC17(&tegra->lock);
	tegra->dev = &pdev->dev;

	regs = FUNC23(pdev, IORESOURCE_MEM, 0);
	tegra->regs = FUNC8(&pdev->dev, regs);
	if (FUNC2(tegra->regs))
		return FUNC3(tegra->regs);

	res = FUNC23(pdev, IORESOURCE_MEM, 1);
	tegra->fpci_base = FUNC8(&pdev->dev, res);
	if (FUNC2(tegra->fpci_base))
		return FUNC3(tegra->fpci_base);

	if (tegra->soc->has_ipfs) {
		res = FUNC23(pdev, IORESOURCE_MEM, 2);
		tegra->ipfs_base = FUNC8(&pdev->dev, res);
		if (FUNC2(tegra->ipfs_base))
			return FUNC3(tegra->ipfs_base);
	}

	tegra->xhci_irq = FUNC22(pdev, 0);
	if (tegra->xhci_irq < 0)
		return tegra->xhci_irq;

	tegra->mbox_irq = FUNC22(pdev, 1);
	if (tegra->mbox_irq < 0)
		return tegra->mbox_irq;

	tegra->padctl = FUNC37(&pdev->dev);
	if (FUNC2(tegra->padctl))
		return FUNC3(tegra->padctl);

	tegra->host_clk = FUNC7(&pdev->dev, "xusb_host");
	if (FUNC2(tegra->host_clk)) {
		err = FUNC3(tegra->host_clk);
		FUNC4(&pdev->dev, "failed to get xusb_host: %d\n", err);
		goto put_padctl;
	}

	tegra->falcon_clk = FUNC7(&pdev->dev, "xusb_falcon_src");
	if (FUNC2(tegra->falcon_clk)) {
		err = FUNC3(tegra->falcon_clk);
		FUNC4(&pdev->dev, "failed to get xusb_falcon_src: %d\n", err);
		goto put_padctl;
	}

	tegra->ss_clk = FUNC7(&pdev->dev, "xusb_ss");
	if (FUNC2(tegra->ss_clk)) {
		err = FUNC3(tegra->ss_clk);
		FUNC4(&pdev->dev, "failed to get xusb_ss: %d\n", err);
		goto put_padctl;
	}

	tegra->ss_src_clk = FUNC7(&pdev->dev, "xusb_ss_src");
	if (FUNC2(tegra->ss_src_clk)) {
		err = FUNC3(tegra->ss_src_clk);
		FUNC4(&pdev->dev, "failed to get xusb_ss_src: %d\n", err);
		goto put_padctl;
	}

	tegra->hs_src_clk = FUNC7(&pdev->dev, "xusb_hs_src");
	if (FUNC2(tegra->hs_src_clk)) {
		err = FUNC3(tegra->hs_src_clk);
		FUNC4(&pdev->dev, "failed to get xusb_hs_src: %d\n", err);
		goto put_padctl;
	}

	tegra->fs_src_clk = FUNC7(&pdev->dev, "xusb_fs_src");
	if (FUNC2(tegra->fs_src_clk)) {
		err = FUNC3(tegra->fs_src_clk);
		FUNC4(&pdev->dev, "failed to get xusb_fs_src: %d\n", err);
		goto put_padctl;
	}

	tegra->pll_u_480m = FUNC7(&pdev->dev, "pll_u_480m");
	if (FUNC2(tegra->pll_u_480m)) {
		err = FUNC3(tegra->pll_u_480m);
		FUNC4(&pdev->dev, "failed to get pll_u_480m: %d\n", err);
		goto put_padctl;
	}

	tegra->clk_m = FUNC7(&pdev->dev, "clk_m");
	if (FUNC2(tegra->clk_m)) {
		err = FUNC3(tegra->clk_m);
		FUNC4(&pdev->dev, "failed to get clk_m: %d\n", err);
		goto put_padctl;
	}

	tegra->pll_e = FUNC7(&pdev->dev, "pll_e");
	if (FUNC2(tegra->pll_e)) {
		err = FUNC3(tegra->pll_e);
		FUNC4(&pdev->dev, "failed to get pll_e: %d\n", err);
		goto put_padctl;
	}

	if (!FUNC21(pdev->dev.of_node, "power-domains")) {
		tegra->host_rst = FUNC14(&pdev->dev,
							 "xusb_host");
		if (FUNC2(tegra->host_rst)) {
			err = FUNC3(tegra->host_rst);
			FUNC4(&pdev->dev,
				"failed to get xusb_host reset: %d\n", err);
			goto put_padctl;
		}

		tegra->ss_rst = FUNC14(&pdev->dev, "xusb_ss");
		if (FUNC2(tegra->ss_rst)) {
			err = FUNC3(tegra->ss_rst);
			FUNC4(&pdev->dev, "failed to get xusb_ss reset: %d\n",
				err);
			goto put_padctl;
		}

		err = FUNC33(TEGRA_POWERGATE_XUSBA,
							tegra->ss_clk,
							tegra->ss_rst);
		if (err) {
			FUNC4(&pdev->dev,
				"failed to enable XUSBA domain: %d\n", err);
			goto put_padctl;
		}

		err = FUNC33(TEGRA_POWERGATE_XUSBC,
							tegra->host_clk,
							tegra->host_rst);
		if (err) {
			FUNC32(TEGRA_POWERGATE_XUSBA);
			FUNC4(&pdev->dev,
				"failed to enable XUSBC domain: %d\n", err);
			goto put_padctl;
		}
	} else {
		err = FUNC39(&pdev->dev, tegra);
		if (err)
			goto put_powerdomains;
	}

	tegra->supplies = FUNC9(&pdev->dev, tegra->soc->num_supplies,
				       sizeof(*tegra->supplies), GFP_KERNEL);
	if (!tegra->supplies) {
		err = -ENOMEM;
		goto put_powerdomains;
	}

	for (i = 0; i < tegra->soc->num_supplies; i++)
		tegra->supplies[i].supply = tegra->soc->supply_names[i];

	err = FUNC12(&pdev->dev, tegra->soc->num_supplies,
				      tegra->supplies);
	if (err) {
		FUNC4(&pdev->dev, "failed to get regulators: %d\n", err);
		goto put_powerdomains;
	}

	for (i = 0; i < tegra->soc->num_types; i++)
		tegra->num_phys += tegra->soc->phy_types[i].num;

	tegra->phys = FUNC9(&pdev->dev, tegra->num_phys,
				   sizeof(*tegra->phys), GFP_KERNEL);
	if (!tegra->phys) {
		err = -ENOMEM;
		goto put_powerdomains;
	}

	for (i = 0, k = 0; i < tegra->soc->num_types; i++) {
		char prop[8];

		for (j = 0; j < tegra->soc->phy_types[i].num; j++) {
			FUNC31(prop, sizeof(prop), "%s-%d",
				 tegra->soc->phy_types[i].name, j);

			phy = FUNC11(&pdev->dev, prop);
			if (FUNC2(phy)) {
				FUNC4(&pdev->dev,
					"failed to get PHY %s: %ld\n", prop,
					FUNC3(phy));
				err = FUNC3(phy);
				goto put_powerdomains;
			}

			tegra->phys[k++] = phy;
		}
	}

	tegra->hcd = FUNC44(&tegra_xhci_hc_driver, &pdev->dev,
				    FUNC5(&pdev->dev));
	if (!tegra->hcd) {
		err = -ENOMEM;
		goto put_powerdomains;
	}

	/*
	 * This must happen after usb_create_hcd(), because usb_create_hcd()
	 * will overwrite the drvdata of the device with the hcd it creates.
	 */
	FUNC24(pdev, tegra);

	FUNC26(&pdev->dev);
	if (FUNC27(&pdev->dev))
		err = FUNC28(&pdev->dev);
	else
		err = FUNC41(&pdev->dev);

	if (err < 0) {
		FUNC4(&pdev->dev, "failed to enable device: %d\n", err);
		goto disable_rpm;
	}

	FUNC34(tegra, regs);

	/*
	 * The XUSB Falcon microcontroller can only address 40 bits, so set
	 * the DMA mask accordingly.
	 */
	err = FUNC15(tegra->dev, FUNC1(40));
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to set DMA mask: %d\n", err);
		goto put_rpm;
	}

	err = FUNC35(tegra);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to load firmware: %d\n", err);
		goto put_rpm;
	}

	tegra->hcd->regs = tegra->regs;
	tegra->hcd->rsrc_start = regs->start;
	tegra->hcd->rsrc_len = FUNC30(regs);

	err = FUNC43(tegra->hcd, tegra->xhci_irq, IRQF_SHARED);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to add USB HCD: %d\n", err);
		goto put_rpm;
	}

	FUNC6(tegra->hcd->self.controller);

	xhci = FUNC16(tegra->hcd);

	xhci->shared_hcd = FUNC45(&tegra_xhci_hc_driver,
						 &pdev->dev,
						 FUNC5(&pdev->dev),
						 tegra->hcd);
	if (!xhci->shared_hcd) {
		FUNC4(&pdev->dev, "failed to create shared HCD\n");
		err = -ENOMEM;
		goto remove_usb2;
	}

	err = FUNC43(xhci->shared_hcd, tegra->xhci_irq, IRQF_SHARED);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to add shared HCD: %d\n", err);
		goto put_usb3;
	}

	FUNC18(&tegra->lock);

	/* Enable firmware messages from controller. */
	msg.cmd = MBOX_CMD_MSG_ENABLED;
	msg.data = 0;

	err = FUNC36(tegra, &msg);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to enable messages: %d\n", err);
		FUNC19(&tegra->lock);
		goto remove_usb3;
	}

	FUNC19(&tegra->lock);

	err = FUNC13(&pdev->dev, tegra->mbox_irq,
					tegra_xusb_mbox_irq,
					tegra_xusb_mbox_thread, 0,
					FUNC5(&pdev->dev), tegra);
	if (err < 0) {
		FUNC4(&pdev->dev, "failed to request IRQ: %d\n", err);
		goto remove_usb3;
	}

	return 0;

remove_usb3:
	FUNC47(xhci->shared_hcd);
put_usb3:
	FUNC46(xhci->shared_hcd);
remove_usb2:
	FUNC47(tegra->hcd);
put_rpm:
	if (!FUNC29(&pdev->dev))
		FUNC42(&pdev->dev);
disable_rpm:
	FUNC25(&pdev->dev);
	FUNC46(tegra->hcd);
put_powerdomains:
	if (!FUNC21(pdev->dev.of_node, "power-domains")) {
		FUNC32(TEGRA_POWERGATE_XUSBC);
		FUNC32(TEGRA_POWERGATE_XUSBA);
	} else {
		FUNC40(&pdev->dev, tegra);
	}
put_padctl:
	FUNC38(tegra->padctl);
	return err;
}