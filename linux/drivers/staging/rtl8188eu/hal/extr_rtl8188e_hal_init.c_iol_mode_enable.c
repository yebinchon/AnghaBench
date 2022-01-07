
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int bFWReady; } ;


 int DBG_88E (char*) ;
 int REG_SYS_CFG ;
 int SW_OFFLOAD_EN ;
 int _8051Reset88E (struct adapter*) ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

void iol_mode_enable(struct adapter *padapter, u8 enable)
{
 u8 reg_0xf0 = 0;

 if (enable) {

  reg_0xf0 = usb_read8(padapter, REG_SYS_CFG);
  usb_write8(padapter, REG_SYS_CFG, reg_0xf0|SW_OFFLOAD_EN);

  if (!padapter->bFWReady) {
   DBG_88E("bFWReady == false call reset 8051...\n");
   _8051Reset88E(padapter);
  }

 } else {

  reg_0xf0 = usb_read8(padapter, REG_SYS_CFG);
  usb_write8(padapter, REG_SYS_CFG, reg_0xf0 & ~SW_OFFLOAD_EN);
 }
}
