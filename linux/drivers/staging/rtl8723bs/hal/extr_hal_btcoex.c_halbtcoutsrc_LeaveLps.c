
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct adapter {int dummy; } ;
struct TYPE_4__ {int bBtCtrlLps; int bBtLpsOn; } ;
struct TYPE_5__ {TYPE_1__ btInfo; struct adapter* Adapter; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int rtw_btcoex_LPS_Leave (struct adapter*) ;

__attribute__((used)) static void halbtcoutsrc_LeaveLps(PBTC_COEXIST pBtCoexist)
{
 struct adapter *padapter;


 padapter = pBtCoexist->Adapter;

 pBtCoexist->btInfo.bBtCtrlLps = 1;
 pBtCoexist->btInfo.bBtLpsOn = 0;

 rtw_btcoex_LPS_Leave(padapter);
}
