
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_wlan_private {int infra_status; } ;


 int SME_MODE_SET_CONFIRM ;
 int get_word (struct ks_wlan_private*) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;

__attribute__((used)) static
void hostif_infrastructure_set_confirm(struct ks_wlan_private *priv)
{
 u16 result_code;

 result_code = get_word(priv);
 priv->infra_status = 1;
 hostif_sme_enqueue(priv, SME_MODE_SET_CONFIRM);
}
