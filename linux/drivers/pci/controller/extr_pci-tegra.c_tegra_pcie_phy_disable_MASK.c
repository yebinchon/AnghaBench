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
struct tegra_pcie_soc {int /*<<< orphan*/  pads_pll_ctl; } ;
struct tegra_pcie {struct tegra_pcie_soc* soc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PADS_CTL ; 
 int PADS_CTL_IDDQ_1L ; 
 int PADS_CTL_RX_DATA_EN_1L ; 
 int PADS_CTL_TX_DATA_EN_1L ; 
 int PADS_PLL_CTL_RST_B4SM ; 
 int FUNC0 (struct tegra_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct tegra_pcie *pcie)
{
	const struct tegra_pcie_soc *soc = pcie->soc;
	u32 value;

	/* disable TX/RX data */
	value = FUNC0(pcie, PADS_CTL);
	value &= ~(PADS_CTL_TX_DATA_EN_1L | PADS_CTL_RX_DATA_EN_1L);
	FUNC1(pcie, value, PADS_CTL);

	/* override IDDQ */
	value = FUNC0(pcie, PADS_CTL);
	value |= PADS_CTL_IDDQ_1L;
	FUNC1(pcie, value, PADS_CTL);

	/* reset PLL */
	value = FUNC0(pcie, soc->pads_pll_ctl);
	value &= ~PADS_PLL_CTL_RST_B4SM;
	FUNC1(pcie, value, soc->pads_pll_ctl);

	FUNC2(20, 100);

	return 0;
}