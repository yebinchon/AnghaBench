
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static inline u16 calc_fifo_space(u16 rp, u16 wp, u16 size)
{
 if (rp <= wp)
  return size - 1 + rp - wp;
 return rp - wp - 1;
}
