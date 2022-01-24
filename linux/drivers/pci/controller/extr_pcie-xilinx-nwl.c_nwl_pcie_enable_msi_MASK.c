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
struct platform_device {int dummy; } ;
struct nwl_msi {scalar_t__ irq_msi1; scalar_t__ irq_msi0; int /*<<< orphan*/ * bitmap; int /*<<< orphan*/  lock; } ;
struct nwl_pcie {unsigned long phys_pcie_reg_base; struct nwl_msi msi; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_PCI_MSI_NR ; 
 int /*<<< orphan*/  I_MSII_BASE_HI ; 
 int /*<<< orphan*/  I_MSII_BASE_LO ; 
 int /*<<< orphan*/  I_MSII_CAPABILITIES ; 
 int /*<<< orphan*/  I_MSII_CONTROL ; 
 int /*<<< orphan*/  MSGF_MSI_MASK_HI ; 
 int /*<<< orphan*/  MSGF_MSI_MASK_LO ; 
 int MSGF_MSI_SR_HI_MASK ; 
 int MSGF_MSI_SR_LO_MASK ; 
 int /*<<< orphan*/  MSGF_MSI_STATUS_HI ; 
 int /*<<< orphan*/  MSGF_MSI_STATUS_LO ; 
 int MSII_ENABLE ; 
 int MSII_PRESENT ; 
 int MSII_STATUS_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct nwl_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct nwl_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nwl_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nwl_pcie_msi_handler_high ; 
 int /*<<< orphan*/  nwl_pcie_msi_handler_low ; 
 void* FUNC9 (struct platform_device*,char*) ; 
 struct platform_device* FUNC10 (struct device*) ; 
 int FUNC11 (unsigned long) ; 

__attribute__((used)) static int FUNC12(struct nwl_pcie *pcie)
{
	struct device *dev = pcie->dev;
	struct platform_device *pdev = FUNC10(dev);
	struct nwl_msi *msi = &pcie->msi;
	unsigned long base;
	int ret;
	int size = FUNC0(INT_PCI_MSI_NR) * sizeof(long);

	FUNC6(&msi->lock);

	msi->bitmap = FUNC4(size, GFP_KERNEL);
	if (!msi->bitmap)
		return -ENOMEM;

	/* Get msi_1 IRQ number */
	msi->irq_msi1 = FUNC9(pdev, "msi1");
	if (msi->irq_msi1 < 0) {
		FUNC1(dev, "failed to get IRQ#%d\n", msi->irq_msi1);
		ret = -EINVAL;
		goto err;
	}

	FUNC2(msi->irq_msi1,
					 nwl_pcie_msi_handler_high, pcie);

	/* Get msi_0 IRQ number */
	msi->irq_msi0 = FUNC9(pdev, "msi0");
	if (msi->irq_msi0 < 0) {
		FUNC1(dev, "failed to get IRQ#%d\n", msi->irq_msi0);
		ret = -EINVAL;
		goto err;
	}

	FUNC2(msi->irq_msi0,
					 nwl_pcie_msi_handler_low, pcie);

	/* Check for msii_present bit */
	ret = FUNC7(pcie, I_MSII_CAPABILITIES) & MSII_PRESENT;
	if (!ret) {
		FUNC1(dev, "MSI not present\n");
		ret = -EIO;
		goto err;
	}

	/* Enable MSII */
	FUNC8(pcie, FUNC7(pcie, I_MSII_CONTROL) |
			  MSII_ENABLE, I_MSII_CONTROL);

	/* Enable MSII status */
	FUNC8(pcie, FUNC7(pcie, I_MSII_CONTROL) |
			  MSII_STATUS_ENABLE, I_MSII_CONTROL);

	/* setup AFI/FPCI range */
	base = pcie->phys_pcie_reg_base;
	FUNC8(pcie, FUNC5(base), I_MSII_BASE_LO);
	FUNC8(pcie, FUNC11(base), I_MSII_BASE_HI);

	/*
	 * For high range MSI interrupts: disable, clear any pending,
	 * and enable
	 */
	FUNC8(pcie, 0, MSGF_MSI_MASK_HI);

	FUNC8(pcie, FUNC7(pcie,  MSGF_MSI_STATUS_HI) &
			  MSGF_MSI_SR_HI_MASK, MSGF_MSI_STATUS_HI);

	FUNC8(pcie, MSGF_MSI_SR_HI_MASK, MSGF_MSI_MASK_HI);

	/*
	 * For low range MSI interrupts: disable, clear any pending,
	 * and enable
	 */
	FUNC8(pcie, 0, MSGF_MSI_MASK_LO);

	FUNC8(pcie, FUNC7(pcie, MSGF_MSI_STATUS_LO) &
			  MSGF_MSI_SR_LO_MASK, MSGF_MSI_STATUS_LO);

	FUNC8(pcie, MSGF_MSI_SR_LO_MASK, MSGF_MSI_MASK_LO);

	return 0;
err:
	FUNC3(msi->bitmap);
	msi->bitmap = NULL;
	return ret;
}