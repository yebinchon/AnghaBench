
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int mac_id; struct adapter* padapter; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_2__ {int (* UpdateRAMaskHandler ) (struct adapter*,int ,int ) ;} ;
struct adapter {TYPE_1__ HalFunc; struct mlme_priv mlmepriv; } ;


 int WIFI_AP_STATE ;
 int add_RATid (struct adapter*,struct sta_info*,int ) ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int stub1 (struct adapter*,int ,int ) ;

void rtw_hal_update_ra_mask(struct sta_info *psta, u8 rssi_level)
{
 struct adapter *padapter;
 struct mlme_priv *pmlmepriv;

 if (!psta)
  return;

 padapter = psta->padapter;

 pmlmepriv = &(padapter->mlmepriv);

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1)
  add_RATid(padapter, psta, rssi_level);
 else {
  if (padapter->HalFunc.UpdateRAMaskHandler)
   padapter->HalFunc.UpdateRAMaskHandler(padapter, psta->mac_id, rssi_level);
 }
}
