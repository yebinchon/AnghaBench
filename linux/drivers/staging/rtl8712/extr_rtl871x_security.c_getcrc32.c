
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;


 int bcrc32initialized ;
 int crc32_init () ;
 scalar_t__* crc32_table ;

__attribute__((used)) static u32 getcrc32(u8 *buf, u32 len)
{
 u8 *p;
 u32 crc;

 if (!bcrc32initialized)
  crc32_init();
 crc = 0xffffffff;
 for (p = buf; len > 0; ++p, --len)
  crc = crc32_table[(crc ^ *p) & 0xff] ^ (crc >> 8);
 return ~crc;
}
