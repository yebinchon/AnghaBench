
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int swap16 (int const) ;

__attribute__((used)) static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
{
 unsigned int i = 0;

 while (i < (bytes / 2)) {
  dest[i] = swap16(source[i]);
  i++;
 }
}
