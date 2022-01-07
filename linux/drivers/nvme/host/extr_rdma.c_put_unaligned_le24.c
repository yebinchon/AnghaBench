
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void put_unaligned_le24(u32 val, u8 *p)
{
 *p++ = val;
 *p++ = val >> 8;
 *p++ = val >> 16;
}
