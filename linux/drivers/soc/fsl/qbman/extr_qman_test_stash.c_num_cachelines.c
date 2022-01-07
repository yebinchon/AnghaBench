
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int L1_CACHE_BYTES ;

__attribute__((used)) static inline u8 num_cachelines(u32 offset)
{
 u8 res = (offset + (L1_CACHE_BYTES - 1))
    / (L1_CACHE_BYTES);
 if (res > 3)
  return 3;
 return res;
}
