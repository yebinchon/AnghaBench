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
typedef  int u16 ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct artpec6_pcie {scalar_t__ phy_base; struct dw_pcie* pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOCCFG ; 
 int NOCCFG_POWER_PCIE_IDLE ; 
 int NOCCFG_POWER_PCIE_IDLEACK ; 
 scalar_t__ PHY_RX_ASIC_OUT ; 
 int PHY_RX_ASIC_OUT_ACK ; 
 scalar_t__ PHY_TX_ASIC_OUT ; 
 int PHY_TX_ASIC_OUT_TX_ACK ; 
 int FUNC0 (struct artpec6_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct artpec6_pcie *artpec6_pcie)
{
	struct dw_pcie *pci = artpec6_pcie->pci;
	struct device *dev = pci->dev;
	u32 val;
	u16 phy_status_tx, phy_status_rx;
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
		phy_status_tx = FUNC2(artpec6_pcie->phy_base + PHY_TX_ASIC_OUT);
		phy_status_rx = FUNC2(artpec6_pcie->phy_base + PHY_RX_ASIC_OUT);
		retries--;
	} while (retries && ((phy_status_tx & PHY_TX_ASIC_OUT_TX_ACK) ||
				(phy_status_rx & PHY_RX_ASIC_OUT_ACK)));
	if (!retries)
		FUNC1(dev, "PHY did not enter Pn state\n");
}