
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kstrtoint (char const*,int ,int*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int srp_parse_tmo(int *tmo, const char *buf)
{
 int res = 0;

 if (strncmp(buf, "off", 3) != 0)
  res = kstrtoint(buf, 0, tmo);
 else
  *tmo = -1;

 return res;
}
