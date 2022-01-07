
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int rtw_hal_fill_h2c_cmd (struct adapter*,int ,int ,int *) ;

__attribute__((used)) static void halbtcoutsrc_FillH2cCmd(void *pBtcContext, u8 elementId, u32 cmdLen, u8 *pCmdBuffer)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 padapter = pBtCoexist->Adapter;

 rtw_hal_fill_h2c_cmd(padapter, elementId, cmdLen, pCmdBuffer);
}
