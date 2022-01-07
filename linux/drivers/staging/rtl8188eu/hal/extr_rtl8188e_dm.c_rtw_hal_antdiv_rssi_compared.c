
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Optimum_antenna; } ;
struct wlan_bssid_ex {scalar_t__ Rssi; TYPE_2__ PhyInfo; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_3__ {scalar_t__ AntDivCfg; } ;



void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter, struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src)
{
 if (Adapter->HalData->AntDivCfg != 0) {

  if (dst->Rssi >= src->Rssi) {
   src->Rssi = dst->Rssi;
   src->PhyInfo.Optimum_antenna = dst->PhyInfo.Optimum_antenna;
  }
 }
}
