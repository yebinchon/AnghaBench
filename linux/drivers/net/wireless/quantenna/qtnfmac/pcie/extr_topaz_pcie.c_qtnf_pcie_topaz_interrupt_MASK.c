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
struct qtnf_pcie_bus_priv {int /*<<< orphan*/  reclaim_tq; int /*<<< orphan*/  shm_ipc_ep_out; int /*<<< orphan*/  shm_ipc_ep_in; int /*<<< orphan*/  pcie_irq_count; int /*<<< orphan*/  msi_enabled; } ;
struct qtnf_pcie_topaz_state {struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int /*<<< orphan*/  mux_napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qtnf_pcie_topaz_state*) ; 
 scalar_t__ FUNC2 (struct qtnf_bus*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_pcie_topaz_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qtnf_pcie_topaz_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct qtnf_bus *bus = (struct qtnf_bus *)data;
	struct qtnf_pcie_topaz_state *ts = (void *)FUNC2(bus);
	struct qtnf_pcie_bus_priv *priv = &ts->base;

	if (!priv->msi_enabled && !FUNC6(ts))
		return IRQ_NONE;

	if (!priv->msi_enabled)
		FUNC4(ts);

	priv->pcie_irq_count++;

	FUNC5(&priv->shm_ipc_ep_in);
	FUNC5(&priv->shm_ipc_ep_out);

	if (FUNC3(&bus->mux_napi)) {
		FUNC1(ts);
		FUNC0(&bus->mux_napi);
	}

	FUNC7(&priv->reclaim_tq);

	return IRQ_HANDLED;
}