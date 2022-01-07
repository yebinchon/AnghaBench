
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rx_work; int rx_wq; int rx_q; } ;
struct nfcmrvl_private {TYPE_1__ fw_dnld; TYPE_2__* ndev; } ;
struct TYPE_4__ {int cmd_cnt; int cmd_timer; } ;


 int atomic_set (int *,int) ;
 int del_timer_sync (int *) ;
 int queue_work (int ,int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ timer_pending (int *) ;

void nfcmrvl_fw_dnld_recv_frame(struct nfcmrvl_private *priv,
       struct sk_buff *skb)
{

 if (timer_pending(&priv->ndev->cmd_timer))
  del_timer_sync(&priv->ndev->cmd_timer);


 atomic_set(&priv->ndev->cmd_cnt, 1);


 skb_queue_tail(&priv->fw_dnld.rx_q, skb);
 queue_work(priv->fw_dnld.rx_wq, &priv->fw_dnld.rx_work);
}
