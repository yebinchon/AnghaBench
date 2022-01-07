
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int PHY_QueryBBReg (struct adapter*,int ,int ) ;

__attribute__((used)) static u32 halbtcoutsrc_GetBbReg(void *pBtcContext, u32 RegAddr, u32 BitMask)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 padapter = pBtCoexist->Adapter;

 return PHY_QueryBBReg(padapter, RegAddr, BitMask);
}
