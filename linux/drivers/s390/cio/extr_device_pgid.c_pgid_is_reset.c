
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgid {int dummy; } ;



__attribute__((used)) static int pgid_is_reset(struct pgid *p)
{
 char *c;

 for (c = (char *)p + 1; c < (char *)(p + 1); c++) {
  if (*c != 0)
   return 0;
 }
 return 1;
}
