
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int bForceLpsOn; } ;
struct TYPE_11__ {int (* fBtcSet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;





 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 int BTC_SET_ACT_ENTER_LPS ;
 int BTC_SET_ACT_LEAVE_LPS ;
 int BTC_SET_ACT_NORMAL_LPS ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_LpsRpwm (TYPE_1__*,int ,int,int) ;
 int halbtc8723b1ant_PsTdmaCheckForPowerSaveState (TYPE_1__*,int) ;
 TYPE_7__* pCoexSta ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int ,int*) ;
 int stub5 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_PowerSaveState(
 PBTC_COEXIST pBtCoexist, u8 psType, u8 lpsVal, u8 rpwmVal
)
{
 bool bLowPwrDisable = 0;

 switch (psType) {
 case 128:

  bLowPwrDisable = 0;
  pBtCoexist->fBtcSet(
   pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable
  );
  pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_NORMAL_LPS, ((void*)0));
  pCoexSta->bForceLpsOn = 0;
  break;
 case 129:
  halbtc8723b1ant_PsTdmaCheckForPowerSaveState(pBtCoexist, 1);
  halbtc8723b1ant_LpsRpwm(pBtCoexist, NORMAL_EXEC, lpsVal, rpwmVal);

  bLowPwrDisable = 1;
  pBtCoexist->fBtcSet(
   pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable
  );

  pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_ENTER_LPS, ((void*)0));
  pCoexSta->bForceLpsOn = 1;
  break;
 case 130:
  halbtc8723b1ant_PsTdmaCheckForPowerSaveState(pBtCoexist, 0);
  pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_LEAVE_LPS, ((void*)0));
  pCoexSta->bForceLpsOn = 0;
  break;
 default:
  break;
 }
}
