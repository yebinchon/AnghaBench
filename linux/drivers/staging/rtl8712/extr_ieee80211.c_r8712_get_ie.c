
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int sint ;



u8 *r8712_get_ie(u8 *pbuf, sint index, uint *len, sint limit)
{
 sint tmp, i;
 u8 *p;

 if (limit < 1)
  return ((void*)0);
 p = pbuf;
 i = 0;
 *len = 0;
 while (1) {
  if (*p == index) {
   *len = *(p + 1);
   return p;
  }
  tmp = *(p + 1);
  p += (tmp + 2);
  i += (tmp + 2);
  if (i >= limit)
   break;
 }
 return ((void*)0);
}
