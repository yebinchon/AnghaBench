
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ PBTC_COEXIST ;





 int halbtcoutsrc_DisplayFwPwrModeCmd (scalar_t__) ;

__attribute__((used)) static void halbtcoutsrc_DisplayDbgMsg(void *pBtcContext, u8 dispType)
{
 PBTC_COEXIST pBtCoexist;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 switch (dispType) {
 case 129:
  break;
 case 130:
  break;
 case 128:
  halbtcoutsrc_DisplayFwPwrModeCmd(pBtCoexist);
  break;
 default:
  break;
 }
}
