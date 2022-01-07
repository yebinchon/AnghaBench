
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EN_AMPDU_RTY_NEW ;
 int REG_ACKTO ;
 int REG_FWHW_TXQ_CTRL ;
 int rtw_read8 (struct adapter*,int ) ;
 int rtw_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitRetryFunction(struct adapter *padapter)
{
 u8 value8;

 value8 = rtw_read8(padapter, REG_FWHW_TXQ_CTRL);
 value8 |= EN_AMPDU_RTY_NEW;
 rtw_write8(padapter, REG_FWHW_TXQ_CTRL, value8);


 rtw_write8(padapter, REG_ACKTO, 0x40);
}
