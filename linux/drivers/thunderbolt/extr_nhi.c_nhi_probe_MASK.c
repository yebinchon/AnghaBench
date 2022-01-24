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
struct tb_nhi_ops {int (* init ) (struct tb_nhi*) ;} ;
struct tb_nhi {int hop_count; struct pci_dev* pdev; struct tb_nhi_ops const* ops; int /*<<< orphan*/  lock; void* rx_rings; void* tx_rings; scalar_t__ iobase; } ;
struct tb {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ REG_HOP_COUNT ; 
 int /*<<< orphan*/  TB_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct tb_nhi* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tb* FUNC7 (struct tb_nhi*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct tb_nhi*) ; 
 int /*<<< orphan*/  FUNC11 (struct tb_nhi*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct tb*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int,char*) ; 
 scalar_t__* FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (struct tb_nhi*) ; 
 int FUNC23 (struct tb*) ; 
 int /*<<< orphan*/  FUNC24 (struct tb*) ; 
 struct tb* FUNC25 (struct tb_nhi*) ; 

__attribute__((used)) static int FUNC26(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct tb_nhi *nhi;
	struct tb *tb;
	int res;

	if (!FUNC9(pdev)) {
		FUNC3(&pdev->dev, "firmware image not valid, aborting\n");
		return -ENODEV;
	}

	res = FUNC14(pdev);
	if (res) {
		FUNC2(&pdev->dev, "cannot enable PCI device, aborting\n");
		return res;
	}

	res = FUNC15(pdev, 1 << 0, "thunderbolt");
	if (res) {
		FUNC2(&pdev->dev, "cannot obtain PCI resources, aborting\n");
		return res;
	}

	nhi = FUNC5(&pdev->dev, sizeof(*nhi), GFP_KERNEL);
	if (!nhi)
		return -ENOMEM;

	nhi->pdev = pdev;
	nhi->ops = (const struct tb_nhi_ops *)id->driver_data;
	/* cannot fail - table is allocated bin pcim_iomap_regions */
	nhi->iobase = FUNC16(pdev)[0];
	nhi->hop_count = FUNC8(nhi->iobase + REG_HOP_COUNT) & 0x3ff;
	if (nhi->hop_count != 12 && nhi->hop_count != 32)
		FUNC3(&pdev->dev, "unexpected hop count: %d\n",
			 nhi->hop_count);

	nhi->tx_rings = FUNC4(&pdev->dev, nhi->hop_count,
				     sizeof(*nhi->tx_rings), GFP_KERNEL);
	nhi->rx_rings = FUNC4(&pdev->dev, nhi->hop_count,
				     sizeof(*nhi->rx_rings), GFP_KERNEL);
	if (!nhi->tx_rings || !nhi->rx_rings)
		return -ENOMEM;

	res = FUNC10(nhi);
	if (res) {
		FUNC2(&pdev->dev, "cannot enable MSI, aborting\n");
		return res;
	}

	FUNC21(&nhi->lock);

	res = FUNC6(&pdev->dev, FUNC0(64));
	if (res)
		res = FUNC6(&pdev->dev, FUNC0(32));
	if (res) {
		FUNC2(&pdev->dev, "failed to set DMA mask\n");
		return res;
	}

	FUNC13(pdev);

	if (nhi->ops && nhi->ops->init) {
		res = nhi->ops->init(nhi);
		if (res)
			return res;
	}

	tb = FUNC7(nhi);
	if (!tb)
		tb = FUNC25(nhi);
	if (!tb) {
		FUNC2(&nhi->pdev->dev,
			"failed to determine connection manager, aborting\n");
		return -ENODEV;
	}

	FUNC1(&nhi->pdev->dev, "NHI initialized, starting thunderbolt\n");

	res = FUNC23(tb);
	if (res) {
		/*
		 * At this point the RX/TX rings might already have been
		 * activated. Do a proper shutdown.
		 */
		FUNC24(tb);
		FUNC11(nhi);
		return res;
	}
	FUNC12(pdev, tb);

	FUNC17(&pdev->dev);
	FUNC19(&pdev->dev, TB_AUTOSUSPEND_DELAY);
	FUNC20(&pdev->dev);
	FUNC18(&pdev->dev);

	return 0;
}