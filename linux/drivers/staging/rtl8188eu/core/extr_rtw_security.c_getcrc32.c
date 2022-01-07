
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 scalar_t__ bcrc32initialized ;
 int cpu_to_le32 (int) ;
 int crc32_init () ;
 int* crc32_table ;

__attribute__((used)) static __le32 getcrc32(u8 *buf, int len)
{
 u8 *p;
 u32 crc;

 if (bcrc32initialized == 0)
  crc32_init();

 crc = 0xffffffff;

 for (p = buf; len > 0; ++p, --len)
  crc = crc32_table[(crc ^ *p) & 0xff] ^ (crc >> 8);
 return cpu_to_le32(~crc);
}
