
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 scalar_t__ REG_MCUFWDL ;
 int _rtl88e_fw_block_write (struct adapter*,int const*,int) ;
 int usb_read8 (struct adapter*,scalar_t__) ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void _rtl88e_fw_page_write(struct adapter *adapt,
      u32 page, const u8 *buffer, u32 size)
{
 u8 value8;
 u8 u8page = (u8)(page & 0x07);

 value8 = (usb_read8(adapt, REG_MCUFWDL + 2) & 0xF8) | u8page;

 usb_write8(adapt, (REG_MCUFWDL + 2), value8);
 _rtl88e_fw_block_write(adapt, buffer, size);
}
