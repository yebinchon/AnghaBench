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
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct artpec6_pcie {scalar_t__ phy_base; struct dw_pcie* pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOCCFG ; 
 int NOCCFG_POWER_PCIE_IDLE ; 
 int NOCCFG_POWER_PCIE_IDLEACK ; 
 int PHY_COSPLLLOCK ; 
 scalar_t__ PHY_STATUS ; 
 int FUNC0 (struct artpec6_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct artpec6_pcie *artpec6_pcie)
{
	struct dw_pcie *pci = artpec6_pcie->pci;
	struct device *dev = pci->dev;
	u32 val;
	unsigned int retries;

	retries = 50;
	do {
		FUNC3(1000, 2000);
		val = FUNC0(artpec6_pcie, NOCCFG);
		retries--;
	} while (retries &&
		(val & (NOCCFG_POWER_PCIE_IDLEACK | NOCCFG_POWER_PCIE_IDLE)));
	if (!retries)
		FUNC1(dev, "PCIe clock manager did not leave idle state\n");

	retries = 50;
	do {
		FUNC3(1000, 2000);
		val = FUNC2(artpec6_pcie->phy_base + PHY_STATUS);
		retries--;
	} while (retries && !(val & PHY_COSPLLLOCK));
	if (!retries)
		FUNC1(dev, "PHY PLL did not lock\n");
}