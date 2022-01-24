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
struct spear13xx_pcie {scalar_t__ is_gen1; struct pcie_app_reg* app_base; struct dw_pcie* pci; } ;
struct pcie_port {int dummy; } ;
struct pcie_app_reg {int /*<<< orphan*/  app_ctrl_0; } ;
struct dw_pcie {int dbi_base; int /*<<< orphan*/  dev; struct pcie_port pp; } ;

/* Variables and functions */
 int APP_LTSSM_ENABLE_ID ; 
 int DEVICE_TYPE_RC ; 
 int EXP_CAP_ID_OFFSET ; 
 int MISCTRL_EN_ID ; 
 int PCI_DEVICE_ID ; 
 int PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_READRQ ; 
 int PCI_EXP_LNKCAP ; 
 int PCI_EXP_LNKCAP_SLS ; 
 int PCI_EXP_LNKCAP_SLS_2_5GB ; 
 int PCI_EXP_LNKCTL2 ; 
 int PCI_VENDOR_ID ; 
 int REG_TRANSLATION_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcie_port*) ; 
 int FUNC4 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct spear13xx_pcie *spear13xx_pcie)
{
	struct dw_pcie *pci = spear13xx_pcie->pci;
	struct pcie_port *pp = &pci->pp;
	struct pcie_app_reg *app_reg = spear13xx_pcie->app_base;
	u32 val;
	u32 exp_cap_off = EXP_CAP_ID_OFFSET;

	if (FUNC1(pci)) {
		FUNC0(pci->dev, "link already up\n");
		return 0;
	}

	FUNC3(pp);

	/*
	 * this controller support only 128 bytes read size, however its
	 * default value in capability register is 512 bytes. So force
	 * it to 128 here.
	 */
	FUNC2(pci->dbi_base + exp_cap_off + PCI_EXP_DEVCTL, 2, &val);
	val &= ~PCI_EXP_DEVCTL_READRQ;
	FUNC5(pci->dbi_base + exp_cap_off + PCI_EXP_DEVCTL, 2, val);

	FUNC5(pci->dbi_base + PCI_VENDOR_ID, 2, 0x104A);
	FUNC5(pci->dbi_base + PCI_DEVICE_ID, 2, 0xCD80);

	/*
	 * if is_gen1 is set then handle it, so that some buggy card
	 * also works
	 */
	if (spear13xx_pcie->is_gen1) {
		FUNC2(pci->dbi_base + exp_cap_off + PCI_EXP_LNKCAP,
			     4, &val);
		if ((val & PCI_EXP_LNKCAP_SLS) != PCI_EXP_LNKCAP_SLS_2_5GB) {
			val &= ~((u32)PCI_EXP_LNKCAP_SLS);
			val |= PCI_EXP_LNKCAP_SLS_2_5GB;
			FUNC5(pci->dbi_base + exp_cap_off +
				      PCI_EXP_LNKCAP, 4, val);
		}

		FUNC2(pci->dbi_base + exp_cap_off + PCI_EXP_LNKCTL2,
			     2, &val);
		if ((val & PCI_EXP_LNKCAP_SLS) != PCI_EXP_LNKCAP_SLS_2_5GB) {
			val &= ~((u32)PCI_EXP_LNKCAP_SLS);
			val |= PCI_EXP_LNKCAP_SLS_2_5GB;
			FUNC5(pci->dbi_base + exp_cap_off +
				      PCI_EXP_LNKCTL2, 2, val);
		}
	}

	/* enable ltssm */
	FUNC6(DEVICE_TYPE_RC | (1 << MISCTRL_EN_ID)
			| (1 << APP_LTSSM_ENABLE_ID)
			| ((u32)1 << REG_TRANSLATION_ENABLE),
			&app_reg->app_ctrl_0);

	return FUNC4(pci);
}