
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ not_useful (unsigned char*,int) ;

__attribute__((used)) static void nubus_advance(unsigned char **ptr, int len, int map)
{
 unsigned char *p = *ptr;

 while (len) {
  while (not_useful(p, map))
   p++;
  p++;
  len--;
 }
 *ptr = p;
}
