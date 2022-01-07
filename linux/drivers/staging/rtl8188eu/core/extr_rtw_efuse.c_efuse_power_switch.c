
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int ANA8M ;
 int EFUSE_ACCESS_OFF ;
 int EFUSE_ACCESS_ON ;
 scalar_t__ EFUSE_TEST ;
 int FEN_ELDR ;
 int LOADER_CLK_EN ;
 int PWC_EV12V ;
 scalar_t__ REG_EFUSE_ACCESS ;
 int REG_SYS_CLKR ;
 int REG_SYS_FUNC_EN ;
 int REG_SYS_ISO_CTRL ;
 int VOLTAGE_V25 ;
 int usb_read16 (struct adapter*,int ) ;
 int usb_read8 (struct adapter*,scalar_t__) ;
 int usb_write16 (struct adapter*,int ,int) ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

void efuse_power_switch(struct adapter *pAdapter, u8 write, u8 pwrstate)
{
 u8 tempval;
 u16 tmpv16;

 if (pwrstate) {
  usb_write8(pAdapter, REG_EFUSE_ACCESS, EFUSE_ACCESS_ON);


  tmpv16 = usb_read16(pAdapter, REG_SYS_ISO_CTRL);
  if (!(tmpv16 & PWC_EV12V)) {
   tmpv16 |= PWC_EV12V;
   usb_write16(pAdapter, REG_SYS_ISO_CTRL, tmpv16);
  }

  tmpv16 = usb_read16(pAdapter, REG_SYS_FUNC_EN);
  if (!(tmpv16 & FEN_ELDR)) {
   tmpv16 |= FEN_ELDR;
   usb_write16(pAdapter, REG_SYS_FUNC_EN, tmpv16);
  }


  tmpv16 = usb_read16(pAdapter, REG_SYS_CLKR);
  if ((!(tmpv16 & LOADER_CLK_EN)) || (!(tmpv16 & ANA8M))) {
   tmpv16 |= (LOADER_CLK_EN | ANA8M);
   usb_write16(pAdapter, REG_SYS_CLKR, tmpv16);
  }

  if (write) {

   tempval = usb_read8(pAdapter, EFUSE_TEST + 3);
   tempval &= 0x0F;
   tempval |= (VOLTAGE_V25 << 4);
   usb_write8(pAdapter, EFUSE_TEST + 3, (tempval | 0x80));
  }
 } else {
  usb_write8(pAdapter, REG_EFUSE_ACCESS, EFUSE_ACCESS_OFF);

  if (write) {

   tempval = usb_read8(pAdapter, EFUSE_TEST + 3);
   usb_write8(pAdapter, EFUSE_TEST + 3, (tempval & 0x7F));
  }
 }
}
