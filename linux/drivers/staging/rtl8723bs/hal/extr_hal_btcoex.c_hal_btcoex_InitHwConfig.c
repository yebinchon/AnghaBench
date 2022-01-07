
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_InitCoexDm (int *) ;
 int EXhalbtcoutsrc_InitHwConfig (int *,int ) ;
 int GLBtCoexist ;
 int hal_btcoex_IsBtExist (struct adapter*) ;

void hal_btcoex_InitHwConfig(struct adapter *padapter, u8 bWifiOnly)
{
 if (!hal_btcoex_IsBtExist(padapter))
  return;

 EXhalbtcoutsrc_InitHwConfig(&GLBtCoexist, bWifiOnly);
 EXhalbtcoutsrc_InitCoexDm(&GLBtCoexist);
}
