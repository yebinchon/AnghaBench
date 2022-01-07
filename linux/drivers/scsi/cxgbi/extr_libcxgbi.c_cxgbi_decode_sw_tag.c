
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void cxgbi_decode_sw_tag(u32 sw_tag, int *idx, int *age)
{
 if (age)
  *age = sw_tag & 0x7FFF;
 if (idx)
  *idx = (sw_tag >> 16) & 0x7FFF;
}
