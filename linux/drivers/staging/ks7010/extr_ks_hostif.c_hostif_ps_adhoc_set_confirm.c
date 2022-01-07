
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {scalar_t__ infra_status; } ;


 int SME_MODE_SET_CONFIRM ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;

__attribute__((used)) static
void hostif_ps_adhoc_set_confirm(struct ks_wlan_private *priv)
{
 priv->infra_status = 0;
 hostif_sme_enqueue(priv, SME_MODE_SET_CONFIRM);
}
