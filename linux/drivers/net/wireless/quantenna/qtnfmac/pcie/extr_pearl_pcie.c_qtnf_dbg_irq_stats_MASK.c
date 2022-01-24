#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct TYPE_2__ {char* pcie_irq_count; } ;
struct qtnf_pcie_pearl_state {char* pcie_irq_tx_count; char* pcie_irq_rx_count; char* pcie_irq_uf_count; TYPE_1__ base; int /*<<< orphan*/  pcie_reg_base; } ;
struct qtnf_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PCIE_HDP_INT_HHBM_UF ; 
 int PCIE_HDP_INT_RX_BITS ; 
 int PCIE_HDP_INT_TX_BITS ; 
 struct qtnf_bus* FUNC1 (int /*<<< orphan*/ ) ; 
 struct qtnf_pcie_pearl_state* FUNC2 (struct qtnf_bus*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *data)
{
	struct qtnf_bus *bus = FUNC1(s->private);
	struct qtnf_pcie_pearl_state *ps = FUNC2(bus);
	u32 reg = FUNC3(FUNC0(ps->pcie_reg_base));
	u32 status;

	FUNC4(s, "pcie_irq_count(%u)\n", ps->base.pcie_irq_count);
	FUNC4(s, "pcie_irq_tx_count(%u)\n", ps->pcie_irq_tx_count);
	status = reg &  PCIE_HDP_INT_TX_BITS;
	FUNC4(s, "pcie_irq_tx_status(%s)\n",
		   (status == PCIE_HDP_INT_TX_BITS) ? "EN" : "DIS");
	FUNC4(s, "pcie_irq_rx_count(%u)\n", ps->pcie_irq_rx_count);
	status = reg &  PCIE_HDP_INT_RX_BITS;
	FUNC4(s, "pcie_irq_rx_status(%s)\n",
		   (status == PCIE_HDP_INT_RX_BITS) ? "EN" : "DIS");
	FUNC4(s, "pcie_irq_uf_count(%u)\n", ps->pcie_irq_uf_count);
	status = reg &  PCIE_HDP_INT_HHBM_UF;
	FUNC4(s, "pcie_irq_hhbm_uf_status(%s)\n",
		   (status == PCIE_HDP_INT_HHBM_UF) ? "EN" : "DIS");

	return 0;
}