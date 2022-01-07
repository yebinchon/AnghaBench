
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_params {int val; char* name; } ;



__attribute__((used)) static char *pvr2_get_param_name(const struct pvr2_params *p, int val,
     int size)
{
 int i;

 for (i = 0; i < size; i++) {
  if (p[i].val == val)
   return p[i].name;
 }
 return ((void*)0);
}
