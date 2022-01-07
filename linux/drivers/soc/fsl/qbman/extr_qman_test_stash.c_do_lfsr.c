
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 do_lfsr(u32 prev)
{
 return (prev >> 1) ^ (-(prev & 1u) & 0xd0000001u);
}
