
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int GLBtcWiFiInIQKState ;

void hal_btcoex_IQKNotify(struct adapter *padapter, u8 state)
{
 GLBtcWiFiInIQKState = state;
}
