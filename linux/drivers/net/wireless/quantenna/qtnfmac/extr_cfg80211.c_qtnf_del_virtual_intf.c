
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wireless_dev {struct net_device* netdev; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int iftype; } ;
struct qtnf_vif {TYPE_2__ wdev; TYPE_1__* netdev; int vifid; TYPE_3__* mac; int high_pri_tx_work; int high_pri_tx_queue; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_6__ {int macid; } ;
struct TYPE_4__ {int * ieee80211_ptr; } ;


 int EFAULT ;
 scalar_t__ NETREG_REGISTERED ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ WARN_ON (int) ;
 int cancel_work_sync (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int pr_err (char*,int ,int ) ;
 scalar_t__ qtnf_cmd_send_del_intf (struct qtnf_vif*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 int qtnf_scan_done (TYPE_3__*,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int unregister_netdevice (struct net_device*) ;

int qtnf_del_virtual_intf(struct wiphy *wiphy, struct wireless_dev *wdev)
{
 struct net_device *netdev = wdev->netdev;
 struct qtnf_vif *vif;
 struct sk_buff *skb;

 if (WARN_ON(!netdev))
  return -EFAULT;

 vif = qtnf_netdev_get_priv(wdev->netdev);

 qtnf_scan_done(vif->mac, 1);


 netif_tx_stop_all_queues(netdev);
 if (netif_carrier_ok(netdev))
  netif_carrier_off(netdev);

 while ((skb = skb_dequeue(&vif->high_pri_tx_queue)))
  dev_kfree_skb_any(skb);

 cancel_work_sync(&vif->high_pri_tx_work);

 if (netdev->reg_state == NETREG_REGISTERED)
  unregister_netdevice(netdev);

 if (qtnf_cmd_send_del_intf(vif))
  pr_err("VIF%u.%u: failed to delete VIF\n", vif->mac->macid,
         vif->vifid);

 vif->netdev->ieee80211_ptr = ((void*)0);
 vif->netdev = ((void*)0);
 vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;

 return 0;
}
