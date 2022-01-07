
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int sd_format_disk_name(char *prefix, int index, char *buf, int buflen)
{
 const int base = 'z' - 'a' + 1;
 char *begin = buf + strlen(prefix);
 char *end = buf + buflen;
 char *p;
 int unit;

 p = end - 1;
 *p = '\0';
 unit = base;
 do {
  if (p == begin)
   return -EINVAL;
  *--p = 'a' + (index % unit);
  index = (index / unit) - 1;
 } while (index >= 0);

 memmove(begin, p, end - p);
 memcpy(buf, prefix, strlen(prefix));

 return 0;
}
