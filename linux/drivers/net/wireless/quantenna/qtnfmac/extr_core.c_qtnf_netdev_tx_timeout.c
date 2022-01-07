
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtnf_wmac {int macid; struct qtnf_bus* bus; } ;
struct qtnf_vif {scalar_t__ cons_tx_timeout_cnt; int reset_work; int vifid; struct qtnf_wmac* mac; } ;
struct qtnf_bus {int workqueue; } ;
struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 scalar_t__ QTNF_TX_TIMEOUT_TRSHLD ;
 int jiffies ;
 int netdev_name (struct net_device*) ;
 int pr_err (char*,...) ;
 int pr_warn (char*,int ,int ,int ) ;
 int qtnf_bus_data_tx_timeout (struct qtnf_bus*,struct net_device*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 int queue_work (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qtnf_netdev_tx_timeout(struct net_device *ndev)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);
 struct qtnf_wmac *mac;
 struct qtnf_bus *bus;

 if (unlikely(!vif || !vif->mac || !vif->mac->bus))
  return;

 mac = vif->mac;
 bus = mac->bus;

 pr_warn("VIF%u.%u: Tx timeout- %lu\n", mac->macid, vif->vifid, jiffies);

 qtnf_bus_data_tx_timeout(bus, ndev);
 ndev->stats.tx_errors++;

 if (++vif->cons_tx_timeout_cnt > QTNF_TX_TIMEOUT_TRSHLD) {
  pr_err("Tx timeout threshold exceeded !\n");
  pr_err("schedule interface %s reset !\n", netdev_name(ndev));
  queue_work(bus->workqueue, &vif->reset_work);
 }
}
