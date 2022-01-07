
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void pattern_set_bit(u32 x, u32 y, u32 pitch, char *pat)
{
 u32 tmp = (y * pitch) + x, index = tmp / 8, bit = tmp % 8;

 pat += index;

 (*pat) |= 0x80 >> bit;
}
