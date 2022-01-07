
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int halbtc8723b2ant_InitHwConfig (int ,int) ;

void EXhalbtc8723b2ant_InitHwConfig(PBTC_COEXIST pBtCoexist, bool bWifiOnly)
{
 halbtc8723b2ant_InitHwConfig(pBtCoexist, 1);
}
