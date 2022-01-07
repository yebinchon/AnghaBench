
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int state; size_t mac_id; } ;
struct mlme_ext_info {TYPE_1__* FW_sta_info; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_2__ {struct sta_info* psta; } ;


 int _FW_LINKED ;
 int add_RATid (struct adapter*,struct sta_info*,int ) ;

void ap_sta_info_defer_update(struct adapter *padapter, struct sta_info *psta)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);

 if (psta->state & _FW_LINKED) {
  pmlmeinfo->FW_sta_info[psta->mac_id].psta = psta;


  add_RATid(padapter, psta, 0);
 }
}
