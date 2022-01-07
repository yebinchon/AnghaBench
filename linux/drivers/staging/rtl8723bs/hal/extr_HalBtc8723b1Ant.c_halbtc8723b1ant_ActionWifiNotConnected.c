
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int BTC_PS_WIFI_NATIVE ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (int ,int ,int ) ;
 int halbtc8723b1ant_PowerSaveState (int ,int ,int,int) ;
 int halbtc8723b1ant_PsTdma (int ,int ,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_ActionWifiNotConnected(PBTC_COEXIST pBtCoexist)
{

 halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);


 halbtc8723b1ant_PsTdma(pBtCoexist, FORCE_EXEC, 0, 8);
 halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
}
