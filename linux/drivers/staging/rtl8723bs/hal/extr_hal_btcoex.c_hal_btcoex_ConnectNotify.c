
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_ConnectNotify (int *,int ) ;
 int GLBtCoexist ;

void hal_btcoex_ConnectNotify(struct adapter *padapter, u8 action)
{
 EXhalbtcoutsrc_ConnectNotify(&GLBtCoexist, action);
}
