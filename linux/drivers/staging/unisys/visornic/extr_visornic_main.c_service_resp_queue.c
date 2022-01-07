
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int got_enbdisack; int xmit_fail; int got_xmit_done; int got_rcv; } ;
struct visornic_devdata {int enab_dis_acked; int server_down; int server_change_state; int enabled; int priv_lock; struct net_device* netdev; TYPE_3__ chstat; int xmitbufhead; int flow_control_lower_hits; int lower_threshold_net_xmits; TYPE_1__* dev; } ;
struct TYPE_9__ {int enable; scalar_t__ context; } ;
struct TYPE_7__ {int xmt_done_result; } ;
struct TYPE_10__ {int type; TYPE_4__ enbdis; scalar_t__ buf; TYPE_2__ xmtdone; } ;
struct uiscmdrsp {TYPE_5__ net; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int visorchannel; } ;


 int IOCHAN_FROM_IOPART ;




 int kfree_skb (scalar_t__) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int skb_unlink (scalar_t__,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ visorchannel_signalremove (int ,int ,struct uiscmdrsp*) ;
 int visornic_rx (struct uiscmdrsp*) ;
 int vnic_hit_low_watermark (struct visornic_devdata*,int ) ;

__attribute__((used)) static void service_resp_queue(struct uiscmdrsp *cmdrsp,
          struct visornic_devdata *devdata,
          int *rx_work_done, int budget)
{
 unsigned long flags;
 struct net_device *netdev;

 while (*rx_work_done < budget) {




  if (visorchannel_signalremove(devdata->dev->visorchannel,
           IOCHAN_FROM_IOPART,
           cmdrsp))
   break;

  switch (cmdrsp->net.type) {
  case 130:
   devdata->chstat.got_rcv++;

   *rx_work_done += visornic_rx(cmdrsp);
   break;
  case 128:
   spin_lock_irqsave(&devdata->priv_lock, flags);
   devdata->chstat.got_xmit_done++;
   if (cmdrsp->net.xmtdone.xmt_done_result)
    devdata->chstat.xmit_fail++;

   netdev = ((struct sk_buff *)cmdrsp->net.buf)->dev;

   if (netdev == devdata->netdev &&
       netif_queue_stopped(netdev)) {



    if (vnic_hit_low_watermark
        (devdata,
         devdata->lower_threshold_net_xmits)) {



     netif_wake_queue(netdev);
     devdata->flow_control_lower_hits++;
    }
   }
   skb_unlink(cmdrsp->net.buf, &devdata->xmitbufhead);
   spin_unlock_irqrestore(&devdata->priv_lock, flags);
   kfree_skb(cmdrsp->net.buf);
   break;
  case 129:
   devdata->chstat.got_enbdisack++;
   netdev = (struct net_device *)
   cmdrsp->net.enbdis.context;
   spin_lock_irqsave(&devdata->priv_lock, flags);
   devdata->enab_dis_acked = 1;
   spin_unlock_irqrestore(&devdata->priv_lock, flags);

   if (devdata->server_down &&
       devdata->server_change_state) {

    devdata->server_down = 0;
    devdata->server_change_state = 0;
    netif_wake_queue(netdev);
    netif_carrier_on(netdev);
   }
   break;
  case 131:
   netdev = devdata->netdev;
   if (cmdrsp->net.enbdis.enable == 1) {
    spin_lock_irqsave(&devdata->priv_lock, flags);
    devdata->enabled = cmdrsp->net.enbdis.enable;
    spin_unlock_irqrestore(&devdata->priv_lock,
             flags);
    netif_wake_queue(netdev);
    netif_carrier_on(netdev);
   } else {
    netif_stop_queue(netdev);
    netif_carrier_off(netdev);
    spin_lock_irqsave(&devdata->priv_lock, flags);
    devdata->enabled = cmdrsp->net.enbdis.enable;
    spin_unlock_irqrestore(&devdata->priv_lock,
             flags);
   }
   break;
  default:
   break;
  }

 }
}
