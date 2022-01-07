
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t qhead; int * event_buff; } ;
struct ks_wlan_private {scalar_t__ dev_state; int sme_task; TYPE_1__ sme_i; } ;


 scalar_t__ DEVICE_STATE_BOOT ;
 scalar_t__ cnt_smeqbody (struct ks_wlan_private*) ;
 int hostif_sme_execute (struct ks_wlan_private*,int ) ;
 int inc_smeqhead (struct ks_wlan_private*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static
void hostif_sme_task(unsigned long dev)
{
 struct ks_wlan_private *priv = (struct ks_wlan_private *)dev;

 if (priv->dev_state < DEVICE_STATE_BOOT)
  return;

 if (cnt_smeqbody(priv) <= 0)
  return;

 hostif_sme_execute(priv, priv->sme_i.event_buff[priv->sme_i.qhead]);
 inc_smeqhead(priv);
 if (cnt_smeqbody(priv) > 0)
  tasklet_schedule(&priv->sme_task);
}
