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
typedef  int u32 ;
struct platform_device {int dummy; } ;
struct nwl_pcie {int ecam_value; int last_busno; int /*<<< orphan*/  irq_misc; scalar_t__ ecam_base; int /*<<< orphan*/  phys_ecam_base; int /*<<< orphan*/  phys_breg_base; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCFG_INTERRUPT ; 
 int BRCFG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  BRCFG_PCIE_RX0 ; 
 int /*<<< orphan*/  BRCFG_PCIE_RX_MSG_FILTER ; 
 int BREG_ENABLE ; 
 int BREG_ENABLE_FORCE ; 
 int BREG_PRESENT ; 
 int CFG_DMA_REG_BAR ; 
 int CFG_ENABLE_MSG_FILTER_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  E_BREG_BASE_HI ; 
 int /*<<< orphan*/  E_BREG_BASE_LO ; 
 int /*<<< orphan*/  E_BREG_CAPABILITIES ; 
 int /*<<< orphan*/  E_BREG_CONTROL ; 
 int /*<<< orphan*/  E_ECAM_BASE_HI ; 
 int /*<<< orphan*/  E_ECAM_BASE_LO ; 
 int /*<<< orphan*/  E_ECAM_CAPABILITIES ; 
 int /*<<< orphan*/  E_ECAM_CONTROL ; 
 int E_ECAM_CR_ENABLE ; 
 int E_ECAM_PRESENT ; 
 int E_ECAM_SIZE_LOC ; 
 int E_ECAM_SIZE_SHIFT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  I_ISUB_CONTROL ; 
 int /*<<< orphan*/  MSGF_LEG_MASK ; 
 int MSGF_LEG_SR_MASKALL ; 
 int /*<<< orphan*/  MSGF_LEG_STATUS ; 
 int /*<<< orphan*/  MSGF_MISC_MASK ; 
 int MSGF_MISC_SR_MASKALL ; 
 int /*<<< orphan*/  MSGF_MISC_STATUS ; 
 scalar_t__ PCI_PRIMARY_BUS ; 
 int SET_ISUB_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct nwl_pcie*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nwl_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nwl_pcie*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nwl_pcie*) ; 
 int /*<<< orphan*/  nwl_pcie_misc_handler ; 
 int FUNC7 (struct nwl_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,char*) ; 
 struct platform_device* FUNC9 (struct device*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct nwl_pcie *pcie)
{
	struct device *dev = pcie->dev;
	struct platform_device *pdev = FUNC9(dev);
	u32 breg_val, ecam_val, first_busno = 0;
	int err;

	breg_val = FUNC4(pcie, E_BREG_CAPABILITIES) & BREG_PRESENT;
	if (!breg_val) {
		FUNC0(dev, "BREG is not present\n");
		return breg_val;
	}

	/* Write bridge_off to breg base */
	FUNC5(pcie, FUNC3(pcie->phys_breg_base),
			  E_BREG_BASE_LO);
	FUNC5(pcie, FUNC10(pcie->phys_breg_base),
			  E_BREG_BASE_HI);

	/* Enable BREG */
	FUNC5(pcie, ~BREG_ENABLE_FORCE & BREG_ENABLE,
			  E_BREG_CONTROL);

	/* Disable DMA channel registers */
	FUNC5(pcie, FUNC4(pcie, BRCFG_PCIE_RX0) |
			  CFG_DMA_REG_BAR, BRCFG_PCIE_RX0);

	/* Enable Ingress subtractive decode translation */
	FUNC5(pcie, SET_ISUB_CONTROL, I_ISUB_CONTROL);

	/* Enable msg filtering details */
	FUNC5(pcie, CFG_ENABLE_MSG_FILTER_MASK,
			  BRCFG_PCIE_RX_MSG_FILTER);

	err = FUNC7(pcie);
	if (err)
		return err;

	ecam_val = FUNC4(pcie, E_ECAM_CAPABILITIES) & E_ECAM_PRESENT;
	if (!ecam_val) {
		FUNC0(dev, "ECAM is not present\n");
		return ecam_val;
	}

	/* Enable ECAM */
	FUNC5(pcie, FUNC4(pcie, E_ECAM_CONTROL) |
			  E_ECAM_CR_ENABLE, E_ECAM_CONTROL);

	FUNC5(pcie, FUNC4(pcie, E_ECAM_CONTROL) |
			  (pcie->ecam_value << E_ECAM_SIZE_SHIFT),
			  E_ECAM_CONTROL);

	FUNC5(pcie, FUNC3(pcie->phys_ecam_base),
			  E_ECAM_BASE_LO);
	FUNC5(pcie, FUNC10(pcie->phys_ecam_base),
			  E_ECAM_BASE_HI);

	/* Get bus range */
	ecam_val = FUNC4(pcie, E_ECAM_CONTROL);
	pcie->last_busno = (ecam_val & E_ECAM_SIZE_LOC) >> E_ECAM_SIZE_SHIFT;
	/* Write primary, secondary and subordinate bus numbers */
	ecam_val = first_busno;
	ecam_val |= (first_busno + 1) << 8;
	ecam_val |= (pcie->last_busno << E_ECAM_SIZE_SHIFT);
	FUNC11(ecam_val, (pcie->ecam_base + PCI_PRIMARY_BUS));

	if (FUNC6(pcie))
		FUNC1(dev, "Link is UP\n");
	else
		FUNC1(dev, "Link is DOWN\n");

	/* Get misc IRQ number */
	pcie->irq_misc = FUNC8(pdev, "misc");
	if (pcie->irq_misc < 0) {
		FUNC0(dev, "failed to get misc IRQ %d\n",
			pcie->irq_misc);
		return -EINVAL;
	}

	err = FUNC2(dev, pcie->irq_misc,
			       nwl_pcie_misc_handler, IRQF_SHARED,
			       "nwl_pcie:misc", pcie);
	if (err) {
		FUNC0(dev, "fail to register misc IRQ#%d\n",
			pcie->irq_misc);
		return err;
	}

	/* Disable all misc interrupts */
	FUNC5(pcie, (u32)~MSGF_MISC_SR_MASKALL, MSGF_MISC_MASK);

	/* Clear pending misc interrupts */
	FUNC5(pcie, FUNC4(pcie, MSGF_MISC_STATUS) &
			  MSGF_MISC_SR_MASKALL, MSGF_MISC_STATUS);

	/* Enable all misc interrupts */
	FUNC5(pcie, MSGF_MISC_SR_MASKALL, MSGF_MISC_MASK);


	/* Disable all legacy interrupts */
	FUNC5(pcie, (u32)~MSGF_LEG_SR_MASKALL, MSGF_LEG_MASK);

	/* Clear pending legacy interrupts */
	FUNC5(pcie, FUNC4(pcie, MSGF_LEG_STATUS) &
			  MSGF_LEG_SR_MASKALL, MSGF_LEG_STATUS);

	/* Enable all legacy interrupts */
	FUNC5(pcie, MSGF_LEG_SR_MASKALL, MSGF_LEG_MASK);

	/* Enable the bridge config interrupt */
	FUNC5(pcie, FUNC4(pcie, BRCFG_INTERRUPT) |
			  BRCFG_INTERRUPT_MASK, BRCFG_INTERRUPT);

	return 0;
}