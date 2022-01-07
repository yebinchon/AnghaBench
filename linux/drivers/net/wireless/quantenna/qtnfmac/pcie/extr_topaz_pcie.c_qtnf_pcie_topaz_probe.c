
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qtnf_shm_ipc_int {struct qtnf_pcie_topaz_state* arg; int fn; } ;
struct TYPE_4__ {int reclaim_tq; scalar_t__ msi_enabled; TYPE_1__* epmem_bar; struct pci_dev* pdev; } ;
struct qtnf_pcie_topaz_state {TYPE_1__* bda; TYPE_2__ base; } ;
struct qtnf_bus {int mux_napi; int mux_dev; int fw_work; int * bus_ops; } ;
struct pci_dev {int irq; int dev; } ;
struct TYPE_3__ {int bda_shm_reg2; int bda_shm_reg1; } ;


 int INIT_WORK (int *,int ) ;
 unsigned long IRQF_NOBALANCING ;
 unsigned long IRQF_SHARED ;
 int devm_request_irq (int *,int ,int *,unsigned long,char*,void*) ;
 int disable_irq (int ) ;
 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int netif_napi_add (int *,int *,int ,int) ;
 int pr_err (char*,...) ;
 int qtnf_pcie_init_shm_ipc (TYPE_2__*,int *,int *,struct qtnf_shm_ipc_int*) ;
 int qtnf_pcie_topaz_bus_ops ;
 int qtnf_pcie_topaz_init_xfer (struct qtnf_pcie_topaz_state*,unsigned int) ;
 int qtnf_pcie_topaz_interrupt ;
 int qtnf_pre_init_ep (struct qtnf_bus*) ;
 int qtnf_reclaim_tasklet_fn ;
 int qtnf_topaz_fw_work_handler ;
 int qtnf_topaz_ipc_gen_ep_int ;
 int qtnf_topaz_rx_poll ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int qtnf_pcie_topaz_probe(struct qtnf_bus *bus, unsigned int tx_bd_num)
{
 struct qtnf_pcie_topaz_state *ts = get_bus_priv(bus);
 struct pci_dev *pdev = ts->base.pdev;
 struct qtnf_shm_ipc_int ipc_int;
 unsigned long irqflags;
 int ret;

 bus->bus_ops = &qtnf_pcie_topaz_bus_ops;
 INIT_WORK(&bus->fw_work, qtnf_topaz_fw_work_handler);
 ts->bda = ts->base.epmem_bar;


 if (ts->base.msi_enabled)
  irqflags = IRQF_NOBALANCING;
 else
  irqflags = IRQF_NOBALANCING | IRQF_SHARED;

 ret = devm_request_irq(&pdev->dev, pdev->irq,
          &qtnf_pcie_topaz_interrupt,
          irqflags, "qtnf_topaz_irq", (void *)bus);
 if (ret) {
  pr_err("failed to request pcie irq %d\n", pdev->irq);
  return ret;
 }

 disable_irq(pdev->irq);

 ret = qtnf_pre_init_ep(bus);
 if (ret) {
  pr_err("failed to init card\n");
  return ret;
 }

 ret = qtnf_pcie_topaz_init_xfer(ts, tx_bd_num);
 if (ret) {
  pr_err("PCIE xfer init failed\n");
  return ret;
 }

 tasklet_init(&ts->base.reclaim_tq, qtnf_reclaim_tasklet_fn,
       (unsigned long)ts);
 netif_napi_add(&bus->mux_dev, &bus->mux_napi,
         qtnf_topaz_rx_poll, 10);

 ipc_int.fn = qtnf_topaz_ipc_gen_ep_int;
 ipc_int.arg = ts;
 qtnf_pcie_init_shm_ipc(&ts->base, &ts->bda->bda_shm_reg1,
          &ts->bda->bda_shm_reg2, &ipc_int);

 return 0;
}
