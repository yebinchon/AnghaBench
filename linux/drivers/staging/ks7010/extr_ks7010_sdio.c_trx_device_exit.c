
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_device_buffer {int skb; int (* complete_handler ) (struct ks_wlan_private*,int ) ;int sendp; } ;
struct TYPE_2__ {size_t qhead; struct tx_device_buffer* tx_dev_buff; } ;
struct ks_wlan_private {int rx_bh_task; TYPE_1__ tx_dev; } ;


 int inc_txqhead (struct ks_wlan_private*) ;
 int kfree (int ) ;
 int stub1 (struct ks_wlan_private*,int ) ;
 int tasklet_kill (int *) ;
 scalar_t__ txq_has_space (struct ks_wlan_private*) ;

__attribute__((used)) static void trx_device_exit(struct ks_wlan_private *priv)
{
 struct tx_device_buffer *sp;


 while (txq_has_space(priv)) {
  sp = &priv->tx_dev.tx_dev_buff[priv->tx_dev.qhead];
  kfree(sp->sendp);
  if (sp->complete_handler)
   (*sp->complete_handler)(priv, sp->skb);
  inc_txqhead(priv);
 }

 tasklet_kill(&priv->rx_bh_task);
}
