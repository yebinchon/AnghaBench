
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qtnf_shm_ipc_int {struct qtnf_pcie_pearl_state* arg; int fn; } ;
struct TYPE_4__ {int reclaim_tq; int msi_enabled; TYPE_1__* epmem_bar; int dmareg_bar; struct pci_dev* pdev; } ;
struct qtnf_pcie_pearl_state {TYPE_1__* bda; TYPE_2__ base; int pcie_reg_base; int irq_lock; } ;
struct qtnf_bus {int mux_napi; int mux_dev; int fw_work; int * bus_ops; } ;
struct pci_dev {int irq; int dev; } ;
struct TYPE_3__ {int bda_shm_reg2; int bda_shm_reg1; int bda_rc_msi_enabled; } ;


 int INIT_WORK (int *,int ) ;
 int devm_request_irq (int *,int ,int *,int ,char*,void*) ;
 struct qtnf_pcie_pearl_state* get_bus_priv (struct qtnf_bus*) ;
 int netif_napi_add (int *,int *,int ,int) ;
 int pr_err (char*,...) ;
 int qtnf_disable_hdp_irqs (struct qtnf_pcie_pearl_state*) ;
 int qtnf_init_hdp_irqs (struct qtnf_pcie_pearl_state*) ;
 int qtnf_pcie_init_shm_ipc (TYPE_2__*,int *,int *,struct qtnf_shm_ipc_int*) ;
 int qtnf_pcie_pearl_bus_ops ;
 int qtnf_pcie_pearl_init_xfer (struct qtnf_pcie_pearl_state*,unsigned int) ;
 int qtnf_pcie_pearl_interrupt ;
 int qtnf_pcie_pearl_ipc_gen_ep_int ;
 int qtnf_pcie_pearl_rx_poll ;
 int qtnf_pearl_free_xfer_buffers (struct qtnf_pcie_pearl_state*) ;
 int qtnf_pearl_fw_work_handler ;
 int qtnf_pearl_reclaim_tasklet_fn ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int writel (int ,int *) ;

__attribute__((used)) static int qtnf_pcie_pearl_probe(struct qtnf_bus *bus, unsigned int tx_bd_size)
{
 struct qtnf_shm_ipc_int ipc_int;
 struct qtnf_pcie_pearl_state *ps = get_bus_priv(bus);
 struct pci_dev *pdev = ps->base.pdev;
 int ret;

 bus->bus_ops = &qtnf_pcie_pearl_bus_ops;
 spin_lock_init(&ps->irq_lock);
 INIT_WORK(&bus->fw_work, qtnf_pearl_fw_work_handler);

 ps->pcie_reg_base = ps->base.dmareg_bar;
 ps->bda = ps->base.epmem_bar;
 writel(ps->base.msi_enabled, &ps->bda->bda_rc_msi_enabled);

 ret = qtnf_pcie_pearl_init_xfer(ps, tx_bd_size);
 if (ret) {
  pr_err("PCIE xfer init failed\n");
  return ret;
 }


 qtnf_init_hdp_irqs(ps);


 qtnf_disable_hdp_irqs(ps);

 ret = devm_request_irq(&pdev->dev, pdev->irq,
          &qtnf_pcie_pearl_interrupt, 0,
          "qtnf_pearl_irq", (void *)bus);
 if (ret) {
  pr_err("failed to request pcie irq %d\n", pdev->irq);
  qtnf_pearl_free_xfer_buffers(ps);
  return ret;
 }

 tasklet_init(&ps->base.reclaim_tq, qtnf_pearl_reclaim_tasklet_fn,
       (unsigned long)ps);
 netif_napi_add(&bus->mux_dev, &bus->mux_napi,
         qtnf_pcie_pearl_rx_poll, 10);

 ipc_int.fn = qtnf_pcie_pearl_ipc_gen_ep_int;
 ipc_int.arg = ps;
 qtnf_pcie_init_shm_ipc(&ps->base, &ps->bda->bda_shm_reg1,
          &ps->bda->bda_shm_reg2, &ipc_int);

 return 0;
}
