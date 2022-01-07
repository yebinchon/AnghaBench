
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DST_15BPP ;
 int DST_16BPP ;
 int DST_24BPP ;
 int DST_32BPP ;
 int DST_8BPP ;
 int EINVAL ;

__attribute__((used)) static u32 depth_to_dst(u32 depth)
{
 if (depth <= 8)
  return DST_8BPP;
 else if (depth <= 15)
  return DST_15BPP;
 else if (depth == 16)
  return DST_16BPP;
 else if (depth <= 24)
  return DST_24BPP;
 else if (depth <= 32)
  return DST_32BPP;

 return -EINVAL;
}
