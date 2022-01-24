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
typedef  int u8 ;
typedef  int u32 ;
struct tegra_pcie_soc {TYPE_2__* ports; } ;
struct tegra_pcie_port {size_t index; struct tegra_pcie* pcie; } ;
struct tegra_pcie {int /*<<< orphan*/  dev; scalar_t__ afi; struct tegra_pcie_soc* soc; } ;
struct TYPE_3__ {int turnoff_bit; int ack_bit; } ;
struct TYPE_4__ {TYPE_1__ pme; } ;

/* Variables and functions */
 scalar_t__ AFI_PCIE_PME ; 
 int /*<<< orphan*/  PME_ACK_TIMEOUT ; 
 int FUNC0 (struct tegra_pcie*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC3 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct tegra_pcie_port *port)
{
	struct tegra_pcie *pcie = port->pcie;
	const struct tegra_pcie_soc *soc = pcie->soc;
	int err;
	u32 val;
	u8 ack_bit;

	val = FUNC0(pcie, AFI_PCIE_PME);
	val |= (0x1 << soc->ports[port->index].pme.turnoff_bit);
	FUNC1(pcie, val, AFI_PCIE_PME);

	ack_bit = soc->ports[port->index].pme.ack_bit;
	err = FUNC3(pcie->afi + AFI_PCIE_PME, val,
				 val & (0x1 << ack_bit), 1, PME_ACK_TIMEOUT);
	if (err)
		FUNC2(pcie->dev, "PME Ack is not received on port: %d\n",
			port->index);

	FUNC4(10000, 11000);

	val = FUNC0(pcie, AFI_PCIE_PME);
	val &= ~(0x1 << soc->ports[port->index].pme.turnoff_bit);
	FUNC1(pcie, val, AFI_PCIE_PME);
}