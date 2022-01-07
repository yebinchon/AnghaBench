
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int __le32 ;
typedef int __le16 ;


 int get_unaligned_le32 (int ) ;
 int le16_to_cpup (int ) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static int dln2_spi_copy_from_buf(u8 *dest, const u8 *dln2_buf, u16 len, u8 bpw)
{



 if (bpw <= 8) {
  memcpy(dest, dln2_buf, len);
 } else if (bpw <= 16) {
  u16 *d = (u16 *)dest;
  __le16 *s = (__le16 *)dln2_buf;

  len = len / 2;
  while (len--)
   *d++ = le16_to_cpup(s++);
 } else {
  u32 *d = (u32 *)dest;
  __le32 *s = (__le32 *)dln2_buf;

  len = len / 4;
  while (len--)
   *d++ = get_unaligned_le32(s++);
 }


 return 0;
}
