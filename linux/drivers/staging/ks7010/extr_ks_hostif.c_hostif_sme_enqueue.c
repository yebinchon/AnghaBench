
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {size_t qtail; int * event_buff; } ;
struct ks_wlan_private {int sme_task; int net_dev; TYPE_1__ sme_i; } ;


 int SME_EVENT_BUFF_SIZE ;
 int cnt_smeqbody (struct ks_wlan_private*) ;
 int inc_smeqtail (struct ks_wlan_private*) ;
 int netdev_err (int ,char*) ;
 int tasklet_schedule (int *) ;

void hostif_sme_enqueue(struct ks_wlan_private *priv, u16 event)
{

 if (cnt_smeqbody(priv) < (SME_EVENT_BUFF_SIZE - 1)) {
  priv->sme_i.event_buff[priv->sme_i.qtail] = event;
  inc_smeqtail(priv);
 } else {

  netdev_err(priv->net_dev, "sme queue buffer overflow\n");
 }

 tasklet_schedule(&priv->sme_task);
}
