
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ resource_size_t ;


 scalar_t__ simple_strtoull (char*,char**,int ) ;
 char* skip_spaces (char*) ;

__attribute__((used)) static char *pnp_get_resource_value(char *buf,
        unsigned long type,
        resource_size_t *start,
        resource_size_t *end,
        unsigned long *flags)
{
 if (start)
  *start = 0;
 if (end)
  *end = 0;
 if (flags)
  *flags = 0;



 buf = skip_spaces(buf);
 if (start) {
  *start = simple_strtoull(buf, &buf, 0);
  if (end) {
   buf = skip_spaces(buf);
   if (*buf == '-') {
    buf = skip_spaces(buf + 1);
    *end = simple_strtoull(buf, &buf, 0);
   } else
    *end = *start;
  }
 }



 return buf;
}
