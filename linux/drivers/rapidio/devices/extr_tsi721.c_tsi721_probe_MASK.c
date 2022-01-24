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
struct tsi721_device {void* odb_base; void* regs; TYPE_1__* p2r_bar; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct TYPE_2__ {scalar_t__ size; void* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR_0 ; 
 int /*<<< orphan*/  BAR_1 ; 
 int /*<<< orphan*/  BAR_2 ; 
 int /*<<< orphan*/  BAR_4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INIT ; 
 int IORESOURCE_MEM ; 
 int IORESOURCE_MEM_64 ; 
 int IORESOURCE_PREFETCH ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int PCI_EXP_DEVCTL2_COMP_TIMEOUT ; 
 int PCI_EXP_DEVCTL_NOSNOOP_EN ; 
 int PCI_EXP_DEVCTL_READRQ ; 
 int PCI_EXP_DEVCTL_RELAX_EN ; 
 int PCI_STD_RESOURCE_END ; 
 scalar_t__ TSI721_DB_WIN_SIZE ; 
 int TSI721_MSIXPBA_OFFSET ; 
 int TSI721_MSIXTBL_OFFSET ; 
 int /*<<< orphan*/  TSI721_PCIECFG_EPCTL ; 
 int /*<<< orphan*/  TSI721_PCIECFG_MSIXPBA ; 
 int /*<<< orphan*/  TSI721_PCIECFG_MSIXTBL ; 
 scalar_t__ TSI721_REG_SPACE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct tsi721_device*) ; 
 struct tsi721_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 void* FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 int pcie_mrrs ; 
 int /*<<< orphan*/  FUNC21 (struct tsi721_device*) ; 
 scalar_t__ FUNC22 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct tsi721_device*) ; 
 int FUNC25 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct tsi721_device*) ; 
 int FUNC29 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct tsi721_device*) ; 
 int FUNC32 (struct tsi721_device*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC36(struct pci_dev *pdev,
				  const struct pci_device_id *id)
{
	struct tsi721_device *priv;
	int err;

	priv = FUNC4(sizeof(struct tsi721_device), GFP_KERNEL);
	if (!priv) {
		err = -ENOMEM;
		goto err_exit;
	}

	err = FUNC7(pdev);
	if (err) {
		FUNC34(&pdev->dev, "Failed to enable PCI device");
		goto err_clean;
	}

	priv->pdev = pdev;

#ifdef DEBUG
	{
		int i;

		for (i = 0; i <= PCI_STD_RESOURCE_END; i++) {
			tsi_debug(INIT, &pdev->dev, "res%d %pR",
				  i, &pdev->resource[i]);
		}
	}
#endif
	/*
	 * Verify BAR configuration
	 */

	/* BAR_0 (registers) must be 512KB+ in 32-bit address space */
	if (!(FUNC12(pdev, BAR_0) & IORESOURCE_MEM) ||
	    FUNC12(pdev, BAR_0) & IORESOURCE_MEM_64 ||
	    FUNC13(pdev, BAR_0) < TSI721_REG_SPACE_SIZE) {
		FUNC34(&pdev->dev, "Missing or misconfigured CSR BAR0");
		err = -ENODEV;
		goto err_disable_pdev;
	}

	/* BAR_1 (outbound doorbells) must be 16MB+ in 32-bit address space */
	if (!(FUNC12(pdev, BAR_1) & IORESOURCE_MEM) ||
	    FUNC12(pdev, BAR_1) & IORESOURCE_MEM_64 ||
	    FUNC13(pdev, BAR_1) < TSI721_DB_WIN_SIZE) {
		FUNC34(&pdev->dev, "Missing or misconfigured Doorbell BAR1");
		err = -ENODEV;
		goto err_disable_pdev;
	}

	/*
	 * BAR_2 and BAR_4 (outbound translation) must be in 64-bit PCIe address
	 * space.
	 * NOTE: BAR_2 and BAR_4 are not used by this version of driver.
	 * It may be a good idea to keep them disabled using HW configuration
	 * to save PCI memory space.
	 */

	priv->p2r_bar[0].size = priv->p2r_bar[1].size = 0;

	if (FUNC12(pdev, BAR_2) & IORESOURCE_MEM_64) {
		if (FUNC12(pdev, BAR_2) & IORESOURCE_PREFETCH)
			FUNC33(INIT, &pdev->dev,
				 "Prefetchable OBW BAR2 will not be used");
		else {
			priv->p2r_bar[0].base = FUNC14(pdev, BAR_2);
			priv->p2r_bar[0].size = FUNC13(pdev, BAR_2);
		}
	}

	if (FUNC12(pdev, BAR_4) & IORESOURCE_MEM_64) {
		if (FUNC12(pdev, BAR_4) & IORESOURCE_PREFETCH)
			FUNC33(INIT, &pdev->dev,
				 "Prefetchable OBW BAR4 will not be used");
		else {
			priv->p2r_bar[1].base = FUNC14(pdev, BAR_4);
			priv->p2r_bar[1].size = FUNC13(pdev, BAR_4);
		}
	}

	err = FUNC11(pdev, DRV_NAME);
	if (err) {
		FUNC34(&pdev->dev, "Unable to obtain PCI resources");
		goto err_disable_pdev;
	}

	FUNC18(pdev);

	priv->regs = FUNC8(pdev, BAR_0);
	if (!priv->regs) {
		FUNC34(&pdev->dev, "Unable to map device registers space");
		err = -ENOMEM;
		goto err_free_res;
	}

	priv->odb_base = FUNC8(pdev, BAR_1);
	if (!priv->odb_base) {
		FUNC34(&pdev->dev, "Unable to map outbound doorbells space");
		err = -ENOMEM;
		goto err_unmap_bars;
	}

	/* Configure DMA attributes. */
	if (FUNC16(pdev, FUNC1(64))) {
		err = FUNC16(pdev, FUNC1(32));
		if (err) {
			FUNC34(&pdev->dev, "Unable to set DMA mask");
			goto err_unmap_bars;
		}

		if (FUNC15(pdev, FUNC1(32)))
			FUNC35(&pdev->dev, "Unable to set consistent DMA mask");
	} else {
		err = FUNC15(pdev, FUNC1(64));
		if (err)
			FUNC35(&pdev->dev, "Unable to set consistent DMA mask");
	}

	FUNC0(!FUNC9(pdev));

	/* Clear "no snoop" and "relaxed ordering" bits. */
	FUNC20(pdev, PCI_EXP_DEVCTL,
		PCI_EXP_DEVCTL_RELAX_EN | PCI_EXP_DEVCTL_NOSNOOP_EN, 0);

	/* Override PCIe Maximum Read Request Size setting if requested */
	if (pcie_mrrs >= 0) {
		if (pcie_mrrs <= 5)
			FUNC20(pdev, PCI_EXP_DEVCTL,
					PCI_EXP_DEVCTL_READRQ, pcie_mrrs << 12);
		else
			FUNC35(&pdev->dev,
				 "Invalid MRRS override value %d", pcie_mrrs);
	}

	/* Set PCIe completion timeout to 1-10ms */
	FUNC20(pdev, PCI_EXP_DEVCTL2,
					   PCI_EXP_DEVCTL2_COMP_TIMEOUT, 0x2);

	/*
	 * FIXUP: correct offsets of MSI-X tables in the MSI-X Capability Block
	 */
	FUNC19(pdev, TSI721_PCIECFG_EPCTL, 0x01);
	FUNC19(pdev, TSI721_PCIECFG_MSIXTBL,
						TSI721_MSIXTBL_OFFSET);
	FUNC19(pdev, TSI721_PCIECFG_MSIXPBA,
						TSI721_MSIXPBA_OFFSET);
	FUNC19(pdev, TSI721_PCIECFG_EPCTL, 0);
	/* End of FIXUP */

	FUNC23(priv);

	FUNC26(priv);
	FUNC27(priv);

	if (FUNC22(priv)) {
		FUNC34(&pdev->dev, "BDMA initialization failed");
		err = -ENOMEM;
		goto err_unmap_bars;
	}

	err = FUNC25(priv);
	if (err)
		goto err_free_bdma;

	FUNC31(priv);

	err = FUNC29(priv);
	if (err)
		goto err_free_consistent;

	err = FUNC32(priv);
	if (err)
		goto err_free_consistent;

	FUNC17(pdev, priv);
	FUNC28(priv);

	return 0;

err_free_consistent:
	FUNC30(priv);
	FUNC24(priv);
err_free_bdma:
	FUNC21(priv);
err_unmap_bars:
	if (priv->regs)
		FUNC2(priv->regs);
	if (priv->odb_base)
		FUNC2(priv->odb_base);
err_free_res:
	FUNC10(pdev);
	FUNC5(pdev);
err_disable_pdev:
	FUNC6(pdev);
err_clean:
	FUNC3(priv);
err_exit:
	return err;
}