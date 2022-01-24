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
struct dw_pcie {int dbi_base; struct device* dev; } ;
struct dra7xx_pcie {int link_gen; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EXP_CAP_ID_OFFSET ; 
 int LTSSM_EN ; 
 int /*<<< orphan*/  PCIECTRL_DRA7XX_CONF_DEVICE_CMD ; 
 int PCI_EXP_LNKCAP ; 
 int PCI_EXP_LNKCAP_SLS ; 
 int PCI_EXP_LNKCAP_SLS_2_5GB ; 
 int PCI_EXP_LNKCTL2 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct dra7xx_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dra7xx_pcie*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 struct dra7xx_pcie* FUNC6 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC7(struct dw_pcie *pci)
{
	struct dra7xx_pcie *dra7xx = FUNC6(pci);
	struct device *dev = pci->dev;
	u32 reg;
	u32 exp_cap_off = EXP_CAP_ID_OFFSET;

	if (FUNC3(pci)) {
		FUNC0(dev, "link is already up\n");
		return 0;
	}

	if (dra7xx->link_gen == 1) {
		FUNC4(pci->dbi_base + exp_cap_off + PCI_EXP_LNKCAP,
			     4, &reg);
		if ((reg & PCI_EXP_LNKCAP_SLS) != PCI_EXP_LNKCAP_SLS_2_5GB) {
			reg &= ~((u32)PCI_EXP_LNKCAP_SLS);
			reg |= PCI_EXP_LNKCAP_SLS_2_5GB;
			FUNC5(pci->dbi_base + exp_cap_off +
				      PCI_EXP_LNKCAP, 4, reg);
		}

		FUNC4(pci->dbi_base + exp_cap_off + PCI_EXP_LNKCTL2,
			     2, &reg);
		if ((reg & PCI_EXP_LNKCAP_SLS) != PCI_EXP_LNKCAP_SLS_2_5GB) {
			reg &= ~((u32)PCI_EXP_LNKCAP_SLS);
			reg |= PCI_EXP_LNKCAP_SLS_2_5GB;
			FUNC5(pci->dbi_base + exp_cap_off +
				      PCI_EXP_LNKCTL2, 2, reg);
		}
	}

	reg = FUNC1(dra7xx, PCIECTRL_DRA7XX_CONF_DEVICE_CMD);
	reg |= LTSSM_EN;
	FUNC2(dra7xx, PCIECTRL_DRA7XX_CONF_DEVICE_CMD, reg);

	return 0;
}