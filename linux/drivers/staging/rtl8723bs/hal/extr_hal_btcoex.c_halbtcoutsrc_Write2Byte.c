
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int rtw_write16 (struct adapter*,int ,int ) ;

__attribute__((used)) static void halbtcoutsrc_Write2Byte(void *pBtcContext, u32 RegAddr, u16 Data)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 padapter = pBtCoexist->Adapter;

 rtw_write16(padapter, RegAddr, Data);
}
