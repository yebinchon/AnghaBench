
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int BTC_WIFI_PNP_SLEEP ;
 int BTC_WIFI_PNP_WAKE_UP ;
 int EXhalbtcoutsrc_PnpNotify (int *,int) ;
 int GLBtCoexist ;

void hal_btcoex_SuspendNotify(struct adapter *padapter, u8 state)
{
 if (state == 1)
  state = BTC_WIFI_PNP_SLEEP;
 else
  state = BTC_WIFI_PNP_WAKE_UP;

 EXhalbtcoutsrc_PnpNotify(&GLBtCoexist, state);
}
