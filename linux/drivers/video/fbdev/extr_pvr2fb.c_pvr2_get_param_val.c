
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_params {int val; int name; } ;


 int strlen (char const*) ;
 int strncasecmp (int ,char const*,int ) ;

__attribute__((used)) static int pvr2_get_param_val(const struct pvr2_params *p, const char *s,
         int size)
{
 int i;

 for (i = 0; i < size; i++) {
  if (!strncasecmp(p[i].name, s, strlen(s)))
   return p[i].val;
 }
 return -1;
}
