
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static inline u8 dpaa_cyc_diff(u8 ringsize, u8 first, u8 last)
{

 if (first <= last)
  return last - first;
 return ringsize + last - first;
}
