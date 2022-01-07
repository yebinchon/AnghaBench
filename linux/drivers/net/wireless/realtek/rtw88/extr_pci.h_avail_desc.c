
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static inline int avail_desc(u32 wp, u32 rp, u32 len)
{
 if (rp > wp)
  return rp - wp - 1;
 else
  return len - wp + rp - 1;
}
