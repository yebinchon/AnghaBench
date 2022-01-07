
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {int dummy; } ;
struct TYPE_3__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTCOEX_ALIVE ;
 int rtw_unregister_task_alive (struct adapter*,int ) ;

__attribute__((used)) static void halbtcoutsrc_NormalLowPower(PBTC_COEXIST pBtCoexist)
{
 struct adapter *padapter;


 padapter = pBtCoexist->Adapter;
 rtw_unregister_task_alive(padapter, BTCOEX_ALIVE);
}
