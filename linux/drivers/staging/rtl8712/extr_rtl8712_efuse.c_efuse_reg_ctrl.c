
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct _adapter {int dummy; } ;


 scalar_t__ EFUSE_CLK_CTRL ;
 scalar_t__ EFUSE_TEST ;
 int msleep (int) ;
 int r8712_read8 (struct _adapter*,scalar_t__) ;
 int r8712_write8 (struct _adapter*,scalar_t__,int) ;

__attribute__((used)) static void efuse_reg_ctrl(struct _adapter *adapter, u8 bPowerOn)
{
 u8 tmpu8 = 0;

 if (bPowerOn) {



  tmpu8 = r8712_read8(adapter, EFUSE_TEST + 3);
  tmpu8 |= 0x80;
  r8712_write8(adapter, EFUSE_TEST + 3, tmpu8);
  msleep(20);

  r8712_write8(adapter, EFUSE_CLK_CTRL, 0x03);
  msleep(20);
 } else {



  tmpu8 = r8712_read8(adapter, EFUSE_TEST + 3);
  tmpu8 &= 0x7F;
  r8712_write8(adapter, EFUSE_TEST + 3, tmpu8);

  r8712_write8(adapter, EFUSE_CLK_CTRL, 0x02);
 }
}
