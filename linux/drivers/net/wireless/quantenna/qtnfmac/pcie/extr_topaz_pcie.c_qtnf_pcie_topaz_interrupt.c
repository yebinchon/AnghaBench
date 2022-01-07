
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_bus_priv {int reclaim_tq; int shm_ipc_ep_out; int shm_ipc_ep_in; int pcie_irq_count; int msi_enabled; } ;
struct qtnf_pcie_topaz_state {struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int mux_napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 int disable_rx_irqs (struct qtnf_pcie_topaz_state*) ;
 scalar_t__ get_bus_priv (struct qtnf_bus*) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int qtnf_deassert_intx (struct qtnf_pcie_topaz_state*) ;
 int qtnf_shm_ipc_irq_handler (int *) ;
 int qtnf_topaz_intx_asserted (struct qtnf_pcie_topaz_state*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t qtnf_pcie_topaz_interrupt(int irq, void *data)
{
 struct qtnf_bus *bus = (struct qtnf_bus *)data;
 struct qtnf_pcie_topaz_state *ts = (void *)get_bus_priv(bus);
 struct qtnf_pcie_bus_priv *priv = &ts->base;

 if (!priv->msi_enabled && !qtnf_topaz_intx_asserted(ts))
  return IRQ_NONE;

 if (!priv->msi_enabled)
  qtnf_deassert_intx(ts);

 priv->pcie_irq_count++;

 qtnf_shm_ipc_irq_handler(&priv->shm_ipc_ep_in);
 qtnf_shm_ipc_irq_handler(&priv->shm_ipc_ep_out);

 if (napi_schedule_prep(&bus->mux_napi)) {
  disable_rx_irqs(ts);
  __napi_schedule(&bus->mux_napi);
 }

 tasklet_hi_schedule(&priv->reclaim_tq);

 return IRQ_HANDLED;
}
