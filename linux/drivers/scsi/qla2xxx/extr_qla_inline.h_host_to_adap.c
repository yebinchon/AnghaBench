
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;

__attribute__((used)) static inline void
host_to_adap(uint8_t *src, uint8_t *dst, uint32_t bsize)
{
 uint32_t *isrc = (uint32_t *) src;
 __le32 *odest = (__le32 *) dst;
 uint32_t iter = bsize >> 2;

 for ( ; iter--; isrc++)
  *odest++ = cpu_to_le32(*isrc);
}
