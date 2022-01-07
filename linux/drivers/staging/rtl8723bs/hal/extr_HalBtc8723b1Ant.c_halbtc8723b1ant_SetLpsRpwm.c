
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int (* fBtcSet ) (TYPE_1__*,int ,int *) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_SET_U1_LPS_VAL ;
 int BTC_SET_U1_RPWM_VAL ;
 int stub1 (TYPE_1__*,int ,int *) ;
 int stub2 (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void halbtc8723b1ant_SetLpsRpwm(
 PBTC_COEXIST pBtCoexist, u8 lpsVal, u8 rpwmVal
)
{
 u8 lps = lpsVal;
 u8 rpwm = rpwmVal;

 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_U1_LPS_VAL, &lps);
 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_U1_RPWM_VAL, &rpwm);
}
