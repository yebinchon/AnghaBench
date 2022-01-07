
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;



__attribute__((used)) static u8 esas2r_calc_byte_cksum(void *addr, u32 len, u8 seed)
{
 u8 *p = (u8 *)addr;
 u8 cksum = seed;

 while (len--)
  cksum = cksum + p[len];
 return cksum;
}
