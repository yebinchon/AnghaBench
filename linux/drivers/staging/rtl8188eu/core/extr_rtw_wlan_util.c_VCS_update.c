
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int rtsen; int cts2self; } ;
struct registry_priv {int vrtl_carrier_sense; int vcs_type; } ;
struct mlme_ext_info {int ERP_IE; int ERP_enable; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct registry_priv registrypriv; } ;


 int BIT (int) ;

void VCS_update(struct adapter *padapter, struct sta_info *psta)
{
 struct registry_priv *pregpriv = &padapter->registrypriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 switch (pregpriv->vrtl_carrier_sense) {
 case 0:
  psta->rtsen = 0;
  psta->cts2self = 0;
  break;
 case 1:
  if (pregpriv->vcs_type == 1) {
   psta->rtsen = 1;
   psta->cts2self = 0;
  } else {
   psta->rtsen = 0;
   psta->cts2self = 1;
  }
  break;
 case 2:
 default:
  if ((pmlmeinfo->ERP_enable) && (pmlmeinfo->ERP_IE & BIT(1))) {
   if (pregpriv->vcs_type == 1) {
    psta->rtsen = 1;
    psta->cts2self = 0;
   } else {
    psta->rtsen = 0;
    psta->cts2self = 1;
   }
  } else {
   psta->rtsen = 0;
   psta->cts2self = 0;
  }
  break;
 }
}
