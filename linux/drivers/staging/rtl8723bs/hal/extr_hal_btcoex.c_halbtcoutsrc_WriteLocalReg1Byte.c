
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ chipInterface; struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 scalar_t__ BTC_INTF_SDIO ;
 int SDIO_LOCAL_BASE ;
 int rtw_write8 (struct adapter*,int,int ) ;

__attribute__((used)) static void halbtcoutsrc_WriteLocalReg1Byte(void *pBtcContext, u32 RegAddr, u8 Data)
{
 PBTC_COEXIST pBtCoexist = (PBTC_COEXIST)pBtcContext;
 struct adapter *Adapter = pBtCoexist->Adapter;

 if (BTC_INTF_SDIO == pBtCoexist->chipInterface)
  rtw_write8(Adapter, SDIO_LOCAL_BASE | RegAddr, Data);
 else
  rtw_write8(Adapter, RegAddr, Data);
}
