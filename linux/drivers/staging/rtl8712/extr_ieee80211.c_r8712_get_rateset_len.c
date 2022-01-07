
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef scalar_t__ u8 ;



__attribute__((used)) static uint r8712_get_rateset_len(u8 *rateset)
{
 uint i = 0;

 while (1) {
  if ((rateset[i]) == 0)
   break;
  if (i > 12)
   break;
  i++;
 }
 return i;
}
