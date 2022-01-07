
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 scalar_t__ REG_MCUFWDL ;
 int usb_read8 (struct adapter*,scalar_t__) ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void _rtl88e_enable_fw_download(struct adapter *adapt, bool enable)
{
 u8 tmp;

 if (enable) {
  tmp = usb_read8(adapt, REG_MCUFWDL);
  usb_write8(adapt, REG_MCUFWDL, tmp | 0x01);

  tmp = usb_read8(adapt, REG_MCUFWDL + 2);
  usb_write8(adapt, REG_MCUFWDL + 2, tmp & 0xf7);
 } else {
  tmp = usb_read8(adapt, REG_MCUFWDL);
  usb_write8(adapt, REG_MCUFWDL, tmp & 0xfe);

  usb_write8(adapt, REG_MCUFWDL + 1, 0x00);
 }
}
