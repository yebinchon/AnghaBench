
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int PBTC_COEXIST ;


 int halbtc8723b1ant_AmpduMaxTime (int ,int,int) ;
 int halbtc8723b1ant_AutoRateFallbackRetry (int ,int,int) ;
 int halbtc8723b1ant_RetryLimit (int ,int,int) ;
 int halbtc8723b1ant_UpdateRaMask (int ,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_LimitedTx(
 PBTC_COEXIST pBtCoexist,
 bool bForceExec,
 u8 raMaskType,
 u8 arfrType,
 u8 retryLimitType,
 u8 ampduTimeType
)
{
 switch (raMaskType) {
 case 0:
  halbtc8723b1ant_UpdateRaMask(pBtCoexist, bForceExec, 0x0);
  break;
 case 1:
  halbtc8723b1ant_UpdateRaMask(pBtCoexist, bForceExec, 0x00000003);
  break;
 case 2:
  halbtc8723b1ant_UpdateRaMask(pBtCoexist, bForceExec, 0x0001f1f7);
  break;
 default:
  break;
 }

 halbtc8723b1ant_AutoRateFallbackRetry(pBtCoexist, bForceExec, arfrType);
 halbtc8723b1ant_RetryLimit(pBtCoexist, bForceExec, retryLimitType);
 halbtc8723b1ant_AmpduMaxTime(pBtCoexist, bForceExec, ampduTimeType);
}
