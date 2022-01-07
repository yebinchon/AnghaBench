
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

ssize_t nd_size_select_show(unsigned long current_size,
  const unsigned long *supported, char *buf)
{
 ssize_t len = 0;
 int i;

 for (i = 0; supported[i]; i++)
  if (current_size == supported[i])
   len += sprintf(buf + len, "[%ld] ", supported[i]);
  else
   len += sprintf(buf + len, "%ld ", supported[i]);
 len += sprintf(buf + len, "\n");
 return len;
}
