
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct _adapter {int dummy; } ;


 scalar_t__ EFUSE_CTRL ;
 int r8712_read8 (struct _adapter*,scalar_t__) ;
 int r8712_write8 (struct _adapter*,scalar_t__,int) ;

__attribute__((used)) static u8 efuse_one_byte_write(struct _adapter *adapter, u16 addr, u8 data)
{
 u8 tmpidx = 0, bResult;


 r8712_write8(adapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF));
 r8712_write8(adapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
        (r8712_read8(adapter, EFUSE_CTRL + 2) & 0xFC));
 r8712_write8(adapter, EFUSE_CTRL, data);
 r8712_write8(adapter, EFUSE_CTRL + 3, 0xF2);

 while ((0x80 & r8712_read8(adapter, EFUSE_CTRL + 3)) &&
        (tmpidx < 100))
  tmpidx++;
 if (tmpidx < 100)
  bResult = 1;
 else
  bResult = 0;
 return bResult;
}
