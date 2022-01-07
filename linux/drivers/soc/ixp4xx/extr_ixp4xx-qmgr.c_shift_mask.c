
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void shift_mask(u32 *mask)
{
 mask[3] = mask[3] << 1 | mask[2] >> 31;
 mask[2] = mask[2] << 1 | mask[1] >> 31;
 mask[1] = mask[1] << 1 | mask[0] >> 31;
 mask[0] <<= 1;
}
