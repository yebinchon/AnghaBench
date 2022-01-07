
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int cntScanNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; scalar_t__ bManualControl; TYPE_1__ statistics; } ;
typedef TYPE_3__* PBTC_COEXIST ;


 scalar_t__ BTC_SCAN_FINISH ;
 scalar_t__ BTC_SCAN_START ;
 int EXhalbtc8723b1ant_ScanNotify (TYPE_3__*,scalar_t__) ;
 int EXhalbtc8723b2ant_ScanNotify (TYPE_3__*,scalar_t__) ;
 int GLBtcWiFiInScanState ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_3__*) ;

void EXhalbtcoutsrc_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 u8 scanType;

 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;
 pBtCoexist->statistics.cntScanNotify++;
 if (pBtCoexist->bManualControl)
  return;

 if (type) {
  scanType = BTC_SCAN_START;
  GLBtcWiFiInScanState = 1;
 } else {
  scanType = BTC_SCAN_FINISH;
  GLBtcWiFiInScanState = 0;
 }




 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_ScanNotify(pBtCoexist, scanType);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_ScanNotify(pBtCoexist, scanType);


}
