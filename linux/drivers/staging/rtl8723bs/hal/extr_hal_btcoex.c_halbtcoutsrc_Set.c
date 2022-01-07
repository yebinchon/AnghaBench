
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wlan_bssid_ex {int MacAddress; } ;
struct sta_info {int dummy; } ;
struct TYPE_12__ {struct wlan_bssid_ex network; } ;
struct TYPE_13__ {TYPE_2__ mlmext_info; } ;
struct adapter {int stapriv; TYPE_3__ mlmeextpriv; int mlmepriv; } ;
struct TYPE_11__ {int bBtDisabled; int bBtBusy; int bLimitedDig; int bForceToRoam; int bRejectAggPkt; int bBtCtrlAggBufSize; int bIncreaseScanDevNum; int bBtTxRxMask; int rssiAdjustForAgcTableOn; int aggBufSize; int rssiAdjustFor1AntCoexType; int lpsVal; int rpwmVal; int raMask; } ;
struct TYPE_14__ {TYPE_1__ btInfo; struct adapter* Adapter; } ;
typedef TYPE_4__* PBTC_COEXIST ;
 int WIFI_ASOC_STATE ;
 int check_fwstate (int *,int ) ;
 int halbtcoutsrc_AggregationCheck (TYPE_4__*) ;
 int halbtcoutsrc_DisableLowPower (TYPE_4__*,int) ;
 int halbtcoutsrc_EnterLps (TYPE_4__*) ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_4__*) ;
 int halbtcoutsrc_LeaveLps (TYPE_4__*) ;
 int halbtcoutsrc_NormalLps (TYPE_4__*) ;
 struct sta_info* rtw_get_stainfo (int *,int ) ;
 int rtw_hal_update_ra_mask (struct sta_info*,int ) ;

__attribute__((used)) static u8 halbtcoutsrc_Set(void *pBtcContext, u8 setType, void *pInBuf)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;
 u8 *pu8;
 u32 *pU4Tmp;
 u8 ret;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 padapter = pBtCoexist->Adapter;
 pu8 = pInBuf;
 pU4Tmp = pInBuf;
 ret = 1;

 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return 0;

 switch (setType) {

 case 139:
  pBtCoexist->btInfo.bBtDisabled = *pu8;
  break;

 case 137:
  pBtCoexist->btInfo.bBtBusy = *pu8;
  break;

 case 138:
  pBtCoexist->btInfo.bLimitedDig = *pu8;
  break;

 case 135:
  pBtCoexist->btInfo.bForceToRoam = *pu8;
  break;

 case 133:
  pBtCoexist->btInfo.bRejectAggPkt = *pu8;
  break;

 case 140:
  pBtCoexist->btInfo.bBtCtrlAggBufSize = *pu8;
  break;

 case 134:
  pBtCoexist->btInfo.bIncreaseScanDevNum = *pu8;
  break;

 case 136:
  pBtCoexist->btInfo.bBtTxRxMask = *pu8;
  break;


 case 128:
  pBtCoexist->btInfo.rssiAdjustForAgcTableOn = *pu8;
  break;

 case 132:
  pBtCoexist->btInfo.aggBufSize = *pu8;
  break;


 case 145:
  ret = 0;
  break;

 case 151:
  halbtcoutsrc_AggregationCheck(pBtCoexist);
  break;



 case 129:
  pBtCoexist->btInfo.rssiAdjustFor1AntCoexType = *pu8;
  break;

 case 131:
  pBtCoexist->btInfo.lpsVal = *pu8;
  break;

 case 130:
  pBtCoexist->btInfo.rpwmVal = *pu8;
  break;


 case 144:
  halbtcoutsrc_LeaveLps(pBtCoexist);
  break;

 case 146:
  halbtcoutsrc_EnterLps(pBtCoexist);
  break;

 case 143:
  halbtcoutsrc_NormalLps(pBtCoexist);
  break;

 case 147:
  halbtcoutsrc_DisableLowPower(pBtCoexist, *pu8);
  break;

 case 141:
  pBtCoexist->btInfo.raMask = *pU4Tmp;

  if (check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE) == 1) {
   struct sta_info *psta;
   struct wlan_bssid_ex *cur_network;

   cur_network = &padapter->mlmeextpriv.mlmext_info.network;
   psta = rtw_get_stainfo(&padapter->stapriv, cur_network->MacAddress);
   rtw_hal_update_ra_mask(psta, 0);
  }
  break;

 case 142:
  ret = 0;
  break;

 case 148:
  ret = 0;
  break;

 case 149:
  ret = 0;
  break;
 case 150:
  ret = 0;
  break;

 default:
  ret = 0;
  break;
 }

 return ret;
}
