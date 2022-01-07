
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* fBtcGet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_4_WAY_PROGRESS ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static bool halbtc8723b1ant_IsWifiStatusChanged(PBTC_COEXIST pBtCoexist)
{
 static bool bPreWifiBusy, bPreUnder4way, bPreBtHsOn;
 bool bWifiBusy = 0, bUnder4way = 0, bBtHsOn = 0;
 bool bWifiConnected = 0;

 pBtCoexist->fBtcGet(
  pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected
 );
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
 pBtCoexist->fBtcGet(
  pBtCoexist, BTC_GET_BL_WIFI_4_WAY_PROGRESS, &bUnder4way
 );

 if (bWifiConnected) {
  if (bWifiBusy != bPreWifiBusy) {
   bPreWifiBusy = bWifiBusy;
   return 1;
  }

  if (bUnder4way != bPreUnder4way) {
   bPreUnder4way = bUnder4way;
   return 1;
  }

  if (bBtHsOn != bPreBtHsOn) {
   bPreBtHsOn = bBtHsOn;
   return 1;
  }
 }

 return 0;
}
