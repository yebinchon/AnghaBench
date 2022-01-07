
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlme_ext_priv {int cur_channel; int cur_wireless_mode; } ;
struct hal_com_data {int CurrentBandType; int FirmwareVersion; int FirmwareSubVersion; int CurrentChannel; int CurrentChannelBW; } ;
struct TYPE_13__ {int NumRxOkInPeriod; int NumTxOkInPeriod; } ;
struct TYPE_15__ {TYPE_4__ LinkDetectInfo; } ;
struct TYPE_10__ {int dot11PrivacyAlgrthm; } ;
struct adapter {TYPE_3__* dvobj; struct mlme_ext_priv mlmeextpriv; TYPE_9__ mlmepriv; TYPE_1__ securitypriv; } ;
typedef int s32 ;
struct TYPE_14__ {struct adapter* Adapter; } ;
struct TYPE_11__ {int pwr_mode; } ;
struct TYPE_12__ {TYPE_2__ pwrctl_priv; } ;
typedef TYPE_4__* PRT_LINK_DETECT_T ;
typedef TYPE_5__* PBTC_COEXIST ;
 int BTC_SMSP ;
 int BTC_WIFI_BW_HT20 ;
 int BTC_WIFI_BW_HT40 ;
 int BTC_WIFI_BW_LEGACY ;
 int BTC_WIFI_TRAFFIC_RX ;
 int BTC_WIFI_TRAFFIC_TX ;
 int CHANNEL_WIDTH_20 ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int GLBtcWiFiInScanState ;
 int IsLegacyOnly (int ) ;
 int WIFI_AP_STATE ;
 int WIFI_ASOC_STATE ;
 int WIFI_UNDER_LINKING ;
 int WIRELESS_11B ;
 int check_fwstate (TYPE_9__*,int ) ;
 int halbtcoutsrc_GetBtPatchVer (TYPE_5__*) ;
 int halbtcoutsrc_GetWifiLinkStatus (TYPE_5__*) ;
 int halbtcoutsrc_GetWifiRssi (struct adapter*) ;
 int halbtcoutsrc_GetWifiScanAPNum (struct adapter*) ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_5__*) ;
 int halbtcoutsrc_IsWifiBusy (struct adapter*) ;

__attribute__((used)) static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;
 struct hal_com_data *pHalData;
 struct mlme_ext_priv *mlmeext;
 u8 *pu8;
 s32 *pS4Tmp;
 u32 *pU4Tmp;
 u8 ret;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return 0;

 padapter = pBtCoexist->Adapter;
 pHalData = GET_HAL_DATA(padapter);
 mlmeext = &padapter->mlmeextpriv;
 pu8 = pOutBuf;
 pS4Tmp = pOutBuf;
 pU4Tmp = pOutBuf;
 ret = 1;

 switch (getType) {
 case 152:
  *pu8 = 0;
  ret = 0;
  break;

 case 153:
  *pu8 = 0;
  ret = 0;
  break;

 case 148:
  *pu8 = check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE);
  break;

 case 149:
  *pu8 = halbtcoutsrc_IsWifiBusy(padapter);
  break;

 case 143:


  *pu8 = GLBtcWiFiInScanState;
  break;

 case 145:
  *pu8 = check_fwstate(&padapter->mlmepriv, WIFI_UNDER_LINKING);
  break;

 case 144:
  *pu8 = check_fwstate(&padapter->mlmepriv, WIFI_UNDER_LINKING);
  break;

 case 151:
  *pu8 = 0;
  break;

 case 142:
  *pu8 = pHalData->CurrentBandType == 1;
  break;

 case 150:
  *pu8 = check_fwstate(&padapter->mlmepriv, WIFI_AP_STATE);
  break;

 case 147:
  *pu8 = padapter->securitypriv.dot11PrivacyAlgrthm == 0 ? 0 : 1;
  break;

 case 141:
  if (mlmeext->cur_wireless_mode == WIRELESS_11B)
   *pu8 = 1;
  else
   *pu8 = 0;
  break;

 case 146:
  *pu8 = 0;
  break;

 case 154:
  *pu8 = 0;
  break;

 case 139:
  *pS4Tmp = halbtcoutsrc_GetWifiRssi(padapter);
  break;

 case 140:
  *pS4Tmp = 0;
  ret = 0;
  break;

 case 131:
  if (IsLegacyOnly(mlmeext->cur_wireless_mode))
   *pU4Tmp = BTC_WIFI_BW_LEGACY;
  else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_20)
   *pU4Tmp = BTC_WIFI_BW_HT20;
  else
   *pU4Tmp = BTC_WIFI_BW_HT40;
  break;

 case 128:
  {
   PRT_LINK_DETECT_T plinkinfo;
   plinkinfo = &padapter->mlmepriv.LinkDetectInfo;

   if (plinkinfo->NumTxOkInPeriod > plinkinfo->NumRxOkInPeriod)
    *pU4Tmp = BTC_WIFI_TRAFFIC_TX;
   else
    *pU4Tmp = BTC_WIFI_TRAFFIC_RX;
  }
  break;

 case 130:
  *pU4Tmp = pHalData->FirmwareVersion << 16;
  *pU4Tmp |= pHalData->FirmwareSubVersion;
  break;

 case 129:
  *pU4Tmp = halbtcoutsrc_GetWifiLinkStatus(pBtCoexist);
  break;

 case 132:
  *pU4Tmp = halbtcoutsrc_GetBtPatchVer(pBtCoexist);
  break;

 case 134:
  *pu8 = padapter->mlmeextpriv.cur_channel;
  break;

 case 135:
  *pu8 = pHalData->CurrentChannel;
  break;

 case 133:
  *pu8 = 0;
  ret = 0;
  break;

 case 136:
  *pu8 = BTC_SMSP;



  break;

 case 138:
  *pu8 = halbtcoutsrc_GetWifiScanAPNum(padapter);
  break;


 case 137:
  *pu8 = padapter->dvobj->pwrctl_priv.pwr_mode;
  break;

 default:
  ret = 0;
  break;
 }

 return ret;
}
