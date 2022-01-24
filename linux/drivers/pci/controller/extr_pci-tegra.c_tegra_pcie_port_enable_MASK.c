#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ enable; } ;
struct tegra_pcie_soc {TYPE_1__ ectl; scalar_t__ force_pca_enable; scalar_t__ has_pex_clkreq_en; } ;
struct tegra_pcie_port {scalar_t__ base; TYPE_2__* pcie; } ;
struct TYPE_5__ {struct tegra_pcie_soc* soc; } ;

/* Variables and functions */
 unsigned long AFI_PEX_CTRL_CLKREQ_EN ; 
 unsigned long AFI_PEX_CTRL_OVERRIDE_EN ; 
 unsigned long AFI_PEX_CTRL_REFCLK_EN ; 
 scalar_t__ RP_VEND_CTL2 ; 
 unsigned long RP_VEND_CTL2_PCA_ENABLE ; 
 unsigned long FUNC0 (TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_pcie_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_pcie_port*) ; 
 unsigned long FUNC5 (struct tegra_pcie_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_pcie_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_pcie_port*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct tegra_pcie_port *port)
{
	unsigned long ctrl = FUNC5(port);
	const struct tegra_pcie_soc *soc = port->pcie->soc;
	unsigned long value;

	/* enable reference clock */
	value = FUNC0(port->pcie, ctrl);
	value |= AFI_PEX_CTRL_REFCLK_EN;

	if (soc->has_pex_clkreq_en)
		value |= AFI_PEX_CTRL_CLKREQ_EN;

	value |= AFI_PEX_CTRL_OVERRIDE_EN;

	FUNC1(port->pcie, value, ctrl);

	FUNC6(port);

	if (soc->force_pca_enable) {
		value = FUNC2(port->base + RP_VEND_CTL2);
		value |= RP_VEND_CTL2_PCA_ENABLE;
		FUNC8(value, port->base + RP_VEND_CTL2);
	}

	FUNC4(port);

	if (soc->ectl.enable)
		FUNC7(port);

	FUNC3(port);
}