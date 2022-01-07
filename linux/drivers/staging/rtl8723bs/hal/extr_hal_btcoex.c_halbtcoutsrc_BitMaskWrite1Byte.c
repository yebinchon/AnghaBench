
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


 int rtw_read8 (struct adapter*,int ) ;
 int rtw_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void halbtcoutsrc_BitMaskWrite1Byte(void *pBtcContext, u32 regAddr, u8 bitMask, u8 data1b)
{
 PBTC_COEXIST pBtCoexist;
 struct adapter *padapter;
 u8 originalValue, bitShift;
 u8 i;


 pBtCoexist = (PBTC_COEXIST)pBtcContext;
 padapter = pBtCoexist->Adapter;
 originalValue = 0;
 bitShift = 0;

 if (bitMask != 0xFF) {
  originalValue = rtw_read8(padapter, regAddr);

  for (i = 0; i <= 7; i++) {
   if ((bitMask>>i)&0x1)
    break;
  }
  bitShift = i;

  data1b = (originalValue & ~bitMask) | ((data1b << bitShift) & bitMask);
 }

 rtw_write8(padapter, regAddr, data1b);
}
