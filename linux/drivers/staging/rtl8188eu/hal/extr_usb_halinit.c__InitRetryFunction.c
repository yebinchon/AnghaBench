
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EN_AMPDU_RTY_NEW ;
 int REG_ACKTO ;
 int REG_FWHW_TXQ_CTRL ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitRetryFunction(struct adapter *Adapter)
{
 u8 value8;

 value8 = usb_read8(Adapter, REG_FWHW_TXQ_CTRL);
 value8 |= EN_AMPDU_RTY_NEW;
 usb_write8(Adapter, REG_FWHW_TXQ_CTRL, value8);


 usb_write8(Adapter, REG_ACKTO, 0x40);
}
