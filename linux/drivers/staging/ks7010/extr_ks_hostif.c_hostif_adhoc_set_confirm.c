
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int infra_status; } ;


 int SME_MODE_SET_CONFIRM ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;

__attribute__((used)) static
void hostif_adhoc_set_confirm(struct ks_wlan_private *priv)
{
 priv->infra_status = 1;
 hostif_sme_enqueue(priv, SME_MODE_SET_CONFIRM);
}
