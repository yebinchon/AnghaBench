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
struct qtnf_shm_ipc_int {struct qtnf_pcie_topaz_state* arg; int /*<<< orphan*/  fn; } ;
struct TYPE_4__ {int /*<<< orphan*/  reclaim_tq; scalar_t__ msi_enabled; TYPE_1__* epmem_bar; struct pci_dev* pdev; } ;
struct qtnf_pcie_topaz_state {TYPE_1__* bda; TYPE_2__ base; } ;
struct qtnf_bus {int /*<<< orphan*/  mux_napi; int /*<<< orphan*/  mux_dev; int /*<<< orphan*/  fw_work; int /*<<< orphan*/ * bus_ops; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bda_shm_reg2; int /*<<< orphan*/  bda_shm_reg1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long IRQF_NOBALANCING ; 
 unsigned long IRQF_SHARED ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct qtnf_pcie_topaz_state* FUNC3 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qtnf_shm_ipc_int*) ; 
 int /*<<< orphan*/  qtnf_pcie_topaz_bus_ops ; 
 int FUNC7 (struct qtnf_pcie_topaz_state*,unsigned int) ; 
 int /*<<< orphan*/  qtnf_pcie_topaz_interrupt ; 
 int FUNC8 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  qtnf_reclaim_tasklet_fn ; 
 int /*<<< orphan*/  qtnf_topaz_fw_work_handler ; 
 int /*<<< orphan*/  qtnf_topaz_ipc_gen_ep_int ; 
 int /*<<< orphan*/  qtnf_topaz_rx_poll ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct qtnf_bus *bus, unsigned int tx_bd_num)
{
	struct qtnf_pcie_topaz_state *ts = FUNC3(bus);
	struct pci_dev *pdev = ts->base.pdev;
	struct qtnf_shm_ipc_int ipc_int;
	unsigned long irqflags;
	int ret;

	bus->bus_ops = &qtnf_pcie_topaz_bus_ops;
	FUNC0(&bus->fw_work, qtnf_topaz_fw_work_handler);
	ts->bda = ts->base.epmem_bar;

	/* assign host msi irq before card init */
	if (ts->base.msi_enabled)
		irqflags = IRQF_NOBALANCING;
	else
		irqflags = IRQF_NOBALANCING | IRQF_SHARED;

	ret = FUNC1(&pdev->dev, pdev->irq,
			       &qtnf_pcie_topaz_interrupt,
			       irqflags, "qtnf_topaz_irq", (void *)bus);
	if (ret) {
		FUNC5("failed to request pcie irq %d\n", pdev->irq);
		return ret;
	}

	FUNC2(pdev->irq);

	ret = FUNC8(bus);
	if (ret) {
		FUNC5("failed to init card\n");
		return ret;
	}

	ret = FUNC7(ts, tx_bd_num);
	if (ret) {
		FUNC5("PCIE xfer init failed\n");
		return ret;
	}

	FUNC9(&ts->base.reclaim_tq, qtnf_reclaim_tasklet_fn,
		     (unsigned long)ts);
	FUNC4(&bus->mux_dev, &bus->mux_napi,
		       qtnf_topaz_rx_poll, 10);

	ipc_int.fn = qtnf_topaz_ipc_gen_ep_int;
	ipc_int.arg = ts;
	FUNC6(&ts->base, &ts->bda->bda_shm_reg1,
			       &ts->bda->bda_shm_reg2, &ipc_int);

	return 0;
}