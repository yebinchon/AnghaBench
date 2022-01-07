
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 add_dword(u32 **p_buffer, u32 value, u32 *used, u32 *avail)
{
 if ((*used + 4) > *avail)
  return(1);

 **p_buffer = value;
 (*p_buffer)++;
 *used += 4;
 return(0);
}
