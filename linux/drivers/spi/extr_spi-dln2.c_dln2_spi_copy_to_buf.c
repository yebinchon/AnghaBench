
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int __le32 ;
typedef int __le16 ;


 int cpu_to_le16p (int ) ;
 int cpu_to_le32p (int ) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static int dln2_spi_copy_to_buf(u8 *dln2_buf, const u8 *src, u16 len, u8 bpw)
{



 if (bpw <= 8) {
  memcpy(dln2_buf, src, len);
 } else if (bpw <= 16) {
  __le16 *d = (__le16 *)dln2_buf;
  u16 *s = (u16 *)src;

  len = len / 2;
  while (len--)
   *d++ = cpu_to_le16p(s++);
 } else {
  __le32 *d = (__le32 *)dln2_buf;
  u32 *s = (u32 *)src;

  len = len / 4;
  while (len--)
   *d++ = cpu_to_le32p(s++);
 }


 return 0;
}
