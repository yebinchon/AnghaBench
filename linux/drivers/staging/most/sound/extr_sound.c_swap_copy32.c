
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int swap32 (int const) ;

__attribute__((used)) static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
{
 unsigned int i = 0;

 while (i < bytes / 4) {
  dest[i] = swap32(source[i]);
  i++;
 }
}
