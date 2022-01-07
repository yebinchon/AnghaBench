
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct qtnf_vif {int high_pri_tx_work; TYPE_2__* mac; int high_pri_tx_queue; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int hprio_workqueue; } ;


 struct qtnf_vif* qtnf_netdev_get_priv (int ) ;
 int queue_work (int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void qtnf_packet_send_hi_pri(struct sk_buff *skb)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(skb->dev);

 skb_queue_tail(&vif->high_pri_tx_queue, skb);
 queue_work(vif->mac->bus->hprio_workqueue, &vif->high_pri_tx_work);
}
