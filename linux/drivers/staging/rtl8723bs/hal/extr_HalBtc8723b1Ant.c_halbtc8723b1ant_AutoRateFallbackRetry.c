
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int curArfrType; int preArfrType; int backupArfrCnt1; int backupArfrCnt2; } ;
struct TYPE_11__ {int (* fBtcWrite4Byte ) (TYPE_1__*,int,int) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_GET_BL_WIFI_UNDER_B_MODE ;
 TYPE_9__* pCoexDm ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int,int) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int,int) ;
 int stub5 (TYPE_1__*,int,int) ;
 int stub6 (TYPE_1__*,int,int) ;
 int stub7 (TYPE_1__*,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_AutoRateFallbackRetry(
 PBTC_COEXIST pBtCoexist, bool bForceExec, u8 type
)
{
 bool bWifiUnderBMode = 0;

 pCoexDm->curArfrType = type;

 if (bForceExec || (pCoexDm->preArfrType != pCoexDm->curArfrType)) {
  switch (pCoexDm->curArfrType) {
  case 0:
   pBtCoexist->fBtcWrite4Byte(
    pBtCoexist, 0x430, pCoexDm->backupArfrCnt1
   );
   pBtCoexist->fBtcWrite4Byte(
    pBtCoexist, 0x434, pCoexDm->backupArfrCnt2
   );
   break;
  case 1:
   pBtCoexist->fBtcGet(
    pBtCoexist, BTC_GET_BL_WIFI_UNDER_B_MODE, &bWifiUnderBMode
   );
   if (bWifiUnderBMode) {
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x430, 0x0);
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x434, 0x01010101);
   } else {
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x430, 0x0);
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x434, 0x04030201);
   }
   break;
  default:
   break;
  }
 }

 pCoexDm->preArfrType = pCoexDm->curArfrType;
}
