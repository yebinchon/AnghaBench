
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sta_priv {struct sta_info** sta_aid; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct adapter {struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;


 int UpdateHalRAMask8188EUsb (struct adapter*,int,int ) ;
 int WIFI_AP_STATE ;
 int add_RATid (struct adapter*,struct sta_info*,int ) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;

void rtw_hal_update_ra_mask(struct adapter *adapt, u32 mac_id, u8 rssi_level)
{
 struct mlme_priv *pmlmepriv = &adapt->mlmepriv;

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 } else {
  UpdateHalRAMask8188EUsb(adapt, mac_id, rssi_level);
 }
}
