
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sta_info {int hwaddr; } ;
struct mlme_ext_info {int accept_addba_req; } ;
struct TYPE_2__ {struct mlme_ext_info mlmext_info; } ;
struct adapter {int mlmepriv; int stapriv; TYPE_1__ mlmeextpriv; } ;


 int get_bssid (int *) ;
 struct sta_info* rtw_get_stainfo (int *,int ) ;
 int send_delba (struct adapter*,int ,int ) ;

void rtw_btcoex_RejectApAggregatedPacket(struct adapter *padapter, u8 enable)
{
 struct mlme_ext_info *pmlmeinfo;
 struct sta_info *psta;

 pmlmeinfo = &padapter->mlmeextpriv.mlmext_info;
 psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(&padapter->mlmepriv));

 if (enable) {
  pmlmeinfo->accept_addba_req = 0;
  if (psta)
   send_delba(padapter, 0, psta->hwaddr);
 } else {
  pmlmeinfo->accept_addba_req = 1;
 }
}
