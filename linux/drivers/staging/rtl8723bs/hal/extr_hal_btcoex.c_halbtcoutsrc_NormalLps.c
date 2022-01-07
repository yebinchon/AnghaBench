
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


 int ALGO_TRACE ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int rtw_btcoex_LPS_Leave (struct adapter*) ;

__attribute__((used)) static void halbtcoutsrc_NormalLps(PBTC_COEXIST pBtCoexist)
{
 struct adapter *padapter;


 BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Normal LPS behavior!!!\n"));

 padapter = pBtCoexist->Adapter;

 if (pBtCoexist->btInfo.bBtCtrlLps) {
  pBtCoexist->btInfo.bBtLpsOn = 0;
  rtw_btcoex_LPS_Leave(padapter);
  pBtCoexist->btInfo.bBtCtrlLps = 0;


 }
}
