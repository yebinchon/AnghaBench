
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int sme_task; } ;


 int tasklet_kill (int *) ;

void hostif_exit(struct ks_wlan_private *priv)
{
 tasklet_kill(&priv->sme_task);
}
