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
struct qtnf_pcie_bus_priv {int /*<<< orphan*/  msi_enabled; int /*<<< orphan*/  reclaim_tq; int /*<<< orphan*/  shm_ipc_ep_out; int /*<<< orphan*/  shm_ipc_ep_in; int /*<<< orphan*/  pcie_irq_count; } ;
struct qtnf_pcie_pearl_state {int pcie_irq_mask; int /*<<< orphan*/  pcie_reg_base; int /*<<< orphan*/  pcie_irq_uf_count; int /*<<< orphan*/  pcie_irq_tx_count; int /*<<< orphan*/  pcie_irq_rx_count; struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int /*<<< orphan*/  mux_napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PCIE_HDP_INT_HHBM_UF ; 
 int PCIE_HDP_INT_RX_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PCIE_HDP_INT_TX_BITS ; 
 struct qtnf_pcie_pearl_state* FUNC1 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct qtnf_bus *bus = (struct qtnf_bus *)data;
	struct qtnf_pcie_pearl_state *ps = FUNC1(bus);
	struct qtnf_pcie_bus_priv *priv = &ps->base;
	u32 status;

	priv->pcie_irq_count++;
	status = FUNC8(FUNC0(ps->pcie_reg_base));

	FUNC7(&priv->shm_ipc_ep_in);
	FUNC7(&priv->shm_ipc_ep_out);

	if (!(status & ps->pcie_irq_mask))
		goto irq_done;

	if (status & PCIE_HDP_INT_RX_BITS)
		ps->pcie_irq_rx_count++;

	if (status & PCIE_HDP_INT_TX_BITS)
		ps->pcie_irq_tx_count++;

	if (status & PCIE_HDP_INT_HHBM_UF)
		ps->pcie_irq_uf_count++;

	if (status & PCIE_HDP_INT_RX_BITS) {
		FUNC4(ps);
		FUNC2(&bus->mux_napi);
	}

	if (status & PCIE_HDP_INT_TX_BITS) {
		FUNC5(ps);
		FUNC9(&priv->reclaim_tq);
	}

irq_done:
	/* H/W workaround: clean all bits, not only enabled */
	FUNC6(~0U, FUNC0(ps->pcie_reg_base));

	if (!priv->msi_enabled)
		FUNC3(ps);

	return IRQ_HANDLED;
}