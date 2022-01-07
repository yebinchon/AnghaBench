
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;



__attribute__((used)) static u32 secmicgetuint32(u8 *p)

{
 s32 i;
 u32 res = 0;

 for (i = 0; i < 4; i++)
  res |= ((u32)(*p++)) << (8*i);
 return res;
}
