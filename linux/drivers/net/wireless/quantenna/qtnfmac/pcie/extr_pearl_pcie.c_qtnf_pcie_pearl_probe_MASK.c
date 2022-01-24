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
struct qtnf_shm_ipc_int {struct qtnf_pcie_pearl_state* arg; int /*<<< orphan*/  fn; } ;
struct TYPE_4__ {int /*<<< orphan*/  reclaim_tq; int /*<<< orphan*/  msi_enabled; TYPE_1__* epmem_bar; int /*<<< orphan*/  dmareg_bar; struct pci_dev* pdev; } ;
struct qtnf_pcie_pearl_state {TYPE_1__* bda; TYPE_2__ base; int /*<<< orphan*/  pcie_reg_base; int /*<<< orphan*/  irq_lock; } ;
struct qtnf_bus {int /*<<< orphan*/  mux_napi; int /*<<< orphan*/  mux_dev; int /*<<< orphan*/  fw_work; int /*<<< orphan*/ * bus_ops; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bda_shm_reg2; int /*<<< orphan*/  bda_shm_reg1; int /*<<< orphan*/  bda_rc_msi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,void*) ; 
 struct qtnf_pcie_pearl_state* FUNC2 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qtnf_shm_ipc_int*) ; 
 int /*<<< orphan*/  qtnf_pcie_pearl_bus_ops ; 
 int FUNC8 (struct qtnf_pcie_pearl_state*,unsigned int) ; 
 int /*<<< orphan*/  qtnf_pcie_pearl_interrupt ; 
 int /*<<< orphan*/  qtnf_pcie_pearl_ipc_gen_ep_int ; 
 int /*<<< orphan*/  qtnf_pcie_pearl_rx_poll ; 
 int /*<<< orphan*/  FUNC9 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  qtnf_pearl_fw_work_handler ; 
 int /*<<< orphan*/  qtnf_pearl_reclaim_tasklet_fn ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct qtnf_bus *bus, unsigned int tx_bd_size)
{
	struct qtnf_shm_ipc_int ipc_int;
	struct qtnf_pcie_pearl_state *ps = FUNC2(bus);
	struct pci_dev *pdev = ps->base.pdev;
	int ret;

	bus->bus_ops = &qtnf_pcie_pearl_bus_ops;
	FUNC10(&ps->irq_lock);
	FUNC0(&bus->fw_work, qtnf_pearl_fw_work_handler);

	ps->pcie_reg_base = ps->base.dmareg_bar;
	ps->bda = ps->base.epmem_bar;
	FUNC12(ps->base.msi_enabled, &ps->bda->bda_rc_msi_enabled);

	ret = FUNC8(ps, tx_bd_size);
	if (ret) {
		FUNC4("PCIE xfer init failed\n");
		return ret;
	}

	/* init default irq settings */
	FUNC6(ps);

	/* start with disabled irqs */
	FUNC5(ps);

	ret = FUNC1(&pdev->dev, pdev->irq,
			       &qtnf_pcie_pearl_interrupt, 0,
			       "qtnf_pearl_irq", (void *)bus);
	if (ret) {
		FUNC4("failed to request pcie irq %d\n", pdev->irq);
		FUNC9(ps);
		return ret;
	}

	FUNC11(&ps->base.reclaim_tq, qtnf_pearl_reclaim_tasklet_fn,
		     (unsigned long)ps);
	FUNC3(&bus->mux_dev, &bus->mux_napi,
		       qtnf_pcie_pearl_rx_poll, 10);

	ipc_int.fn = qtnf_pcie_pearl_ipc_gen_ep_int;
	ipc_int.arg = ps;
	FUNC7(&ps->base, &ps->bda->bda_shm_reg1,
			       &ps->bda->bda_shm_reg2, &ipc_int);

	return 0;
}