
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ FBT_CPYR ;
 scalar_t__ FBT_FLASH_VER ;
 scalar_t__ FBT_SETUP ;
 scalar_t__ FM_BUF_SZ ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;

__attribute__((used)) static u32 chk_cfg(u8 *cfg, u32 length, u32 *flash_ver)
{
 u16 *pw = (u16 *)cfg - 1;
 u32 sz = 0;
 u32 len = length;

 if (len == 0)
  len = FM_BUF_SZ;

 if (flash_ver)
  *flash_ver = 0;

 while (1) {
  u16 type;
  u16 size;

  type = le16_to_cpu(*pw--);
  size = le16_to_cpu(*pw--);

  if (type != FBT_CPYR
      && type != FBT_SETUP
      && type != FBT_FLASH_VER)
   break;

  if (type == FBT_FLASH_VER
      && flash_ver)
   *flash_ver = le32_to_cpu(*(u32 *)(pw - 1));

  sz += size + (2 * sizeof(u16));
  pw -= size / sizeof(u16);

  if (sz > len - (2 * sizeof(u16)))
   break;
 }


 if (length && sz != length)
  return 0;

 return sz;
}
