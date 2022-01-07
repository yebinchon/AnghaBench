
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int bss_cnt; } ;
struct mlme_ext_priv {TYPE_1__ sitesurvey_res; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int GLBtcWiFiInScanState ;

__attribute__((used)) static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext;
 static u8 scan_AP_num;

 pmlmeext = &padapter->mlmeextpriv;

 if (!GLBtcWiFiInScanState) {
  if (pmlmeext->sitesurvey_res.bss_cnt > 0xFF)
   scan_AP_num = 0xFF;
  else
   scan_AP_num = (u8)pmlmeext->sitesurvey_res.bss_cnt;
 }

 return scan_AP_num;
}
