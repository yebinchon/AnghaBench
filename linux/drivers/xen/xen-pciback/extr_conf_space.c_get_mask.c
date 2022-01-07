
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 get_mask(int size)
{
 if (size == 1)
  return 0xff;
 else if (size == 2)
  return 0xffff;
 else
  return 0xffffffff;
}
