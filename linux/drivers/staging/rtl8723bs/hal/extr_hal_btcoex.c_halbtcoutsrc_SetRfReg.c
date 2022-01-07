
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


 int PHY_SetRFReg (struct adapter*,int ,int ,int ,int ) ;

__attribute__((used)) static void halbtcoutsrc_SetRfReg(void *pBtcContext, u8 eRFPath, u32 RegAddr, u32 BitMask, u32 Data)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 padapter = pBtCoexist->Adapter;

 PHY_SetRFReg(padapter, eRFPath, RegAddr, BitMask, Data);
}
