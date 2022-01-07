
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

u64 nd_fletcher64(void *addr, size_t len, bool le)
{
 u32 *buf = addr;
 u32 lo32 = 0;
 u64 hi32 = 0;
 int i;

 for (i = 0; i < len / sizeof(u32); i++) {
  lo32 += le ? le32_to_cpu((__le32) buf[i]) : buf[i];
  hi32 += lo32;
 }

 return hi32 << 32 | lo32;
}
