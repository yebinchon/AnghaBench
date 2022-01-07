
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_stopped; int reclaim_tq; int sysctl_bar; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; int txqueue_wake; } ;
struct qtnf_bus {int dummy; } ;
struct net_device {int dummy; } ;


 int TOPAZ_IPC_IRQ_WORD (int ) ;
 int TOPAZ_LH_IPC4_INT (int ) ;
 int TOPAZ_RC_TX_STOP_IRQ ;
 int dma_wmb () ;
 scalar_t__ get_bus_priv (struct qtnf_bus*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int tasklet_hi_schedule (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static void qtnf_try_stop_xmit(struct qtnf_bus *bus, struct net_device *ndev)
{
 struct qtnf_pcie_topaz_state *ts = (void *)get_bus_priv(bus);

 if (ndev) {
  netif_tx_stop_all_queues(ndev);
  ts->base.tx_stopped = 1;
 }

 writel(0x0, ts->txqueue_wake);


 dma_wmb();


 writel(TOPAZ_IPC_IRQ_WORD(TOPAZ_RC_TX_STOP_IRQ),
        TOPAZ_LH_IPC4_INT(ts->base.sysctl_bar));


 tasklet_hi_schedule(&ts->base.reclaim_tq);
}
