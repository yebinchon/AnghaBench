#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct imx6_pcie {TYPE_2__* pci; TYPE_1__* drvdata; int /*<<< orphan*/  pcie_phy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int IMX6_PCIE_FLAG_IMX6_PHY ; 
 int /*<<< orphan*/  PCIE_PHY_ATEOVRD ; 
 int PCIE_PHY_ATEOVRD_EN ; 
 int PCIE_PHY_ATEOVRD_REF_CLKDIV_MASK ; 
 int PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT ; 
 int PCIE_PHY_MPLL_MULTIPLIER_MASK ; 
 int PCIE_PHY_MPLL_MULTIPLIER_OVRD ; 
 int PCIE_PHY_MPLL_MULTIPLIER_SHIFT ; 
 int /*<<< orphan*/  PCIE_PHY_MPLL_OVRD_IN_LO ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct imx6_pcie*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx6_pcie*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct imx6_pcie *imx6_pcie)
{
	unsigned long phy_rate = FUNC0(imx6_pcie->pcie_phy);
	int mult, div;
	u16 val;

	if (!(imx6_pcie->drvdata->flags & IMX6_PCIE_FLAG_IMX6_PHY))
		return 0;

	switch (phy_rate) {
	case 125000000:
		/*
		 * The default settings of the MPLL are for a 125MHz input
		 * clock, so no need to reconfigure anything in that case.
		 */
		return 0;
	case 100000000:
		mult = 25;
		div = 0;
		break;
	case 200000000:
		mult = 25;
		div = 1;
		break;
	default:
		FUNC1(imx6_pcie->pci->dev,
			"Unsupported PHY reference clock rate %lu\n", phy_rate);
		return -EINVAL;
	}

	FUNC2(imx6_pcie, PCIE_PHY_MPLL_OVRD_IN_LO, &val);
	val &= ~(PCIE_PHY_MPLL_MULTIPLIER_MASK <<
		 PCIE_PHY_MPLL_MULTIPLIER_SHIFT);
	val |= mult << PCIE_PHY_MPLL_MULTIPLIER_SHIFT;
	val |= PCIE_PHY_MPLL_MULTIPLIER_OVRD;
	FUNC3(imx6_pcie, PCIE_PHY_MPLL_OVRD_IN_LO, val);

	FUNC2(imx6_pcie, PCIE_PHY_ATEOVRD, &val);
	val &= ~(PCIE_PHY_ATEOVRD_REF_CLKDIV_MASK <<
		 PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT);
	val |= div << PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT;
	val |= PCIE_PHY_ATEOVRD_EN;
	FUNC3(imx6_pcie, PCIE_PHY_ATEOVRD, val);

	return 0;
}