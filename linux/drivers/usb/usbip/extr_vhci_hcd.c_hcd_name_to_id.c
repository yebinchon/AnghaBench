
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kstrtol (char*,int,long*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int hcd_name_to_id(const char *name)
{
 char *c;
 long val;
 int ret;

 c = strchr(name, '.');
 if (c == ((void*)0))
  return 0;

 ret = kstrtol(c+1, 10, &val);
 if (ret < 0)
  return ret;

 return val;
}
