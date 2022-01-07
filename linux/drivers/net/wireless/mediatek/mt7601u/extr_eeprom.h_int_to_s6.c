
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 int_to_s6(int val)
{
 if (val < -0x20)
  return 0x20;
 if (val > 0x1f)
  return 0x1f;

 return val & 0x3f;
}
