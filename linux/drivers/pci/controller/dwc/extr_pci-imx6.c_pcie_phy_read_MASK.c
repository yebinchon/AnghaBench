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
typedef  int /*<<< orphan*/  u16 ;
struct imx6_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_PHY_CTRL ; 
 int PCIE_PHY_CTRL_RD ; 
 int /*<<< orphan*/  PCIE_PHY_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct imx6_pcie*,int) ; 
 int FUNC3 (struct imx6_pcie*,int) ; 

__attribute__((used)) static int FUNC4(struct imx6_pcie *imx6_pcie, int addr, u16 *data)
{
	struct dw_pcie *pci = imx6_pcie->pci;
	u32 phy_ctl;
	int ret;

	ret = FUNC3(imx6_pcie, addr);
	if (ret)
		return ret;

	/* assert Read signal */
	phy_ctl = PCIE_PHY_CTRL_RD;
	FUNC1(pci, PCIE_PHY_CTRL, phy_ctl);

	ret = FUNC2(imx6_pcie, true);
	if (ret)
		return ret;

	*data = FUNC0(pci, PCIE_PHY_STAT);

	/* deassert Read signal */
	FUNC1(pci, PCIE_PHY_CTRL, 0x00);

	return FUNC2(imx6_pcie, false);
}