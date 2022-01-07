
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_bar; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; int txqueue_wake; } ;
struct qtnf_bus {int dummy; } ;
struct net_device {int dummy; } ;


 int TOPAZ_IPC_IRQ_WORD (int ) ;
 int TOPAZ_LH_IPC4_INT (int ) ;
 int TOPAZ_RC_TX_STOP_IRQ ;
 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int netif_wake_queue (struct net_device*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void qtnf_try_wake_xmit(struct qtnf_bus *bus, struct net_device *ndev)
{
 struct qtnf_pcie_topaz_state *ts = get_bus_priv(bus);
 int ready;

 ready = readl(ts->txqueue_wake);
 if (ready) {
  netif_wake_queue(ndev);
 } else {

  writel(TOPAZ_IPC_IRQ_WORD(TOPAZ_RC_TX_STOP_IRQ),
         TOPAZ_LH_IPC4_INT(ts->base.sysctl_bar));
 }
}
