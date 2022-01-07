
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int strscpy (char*,char const*,int) ;

int copy_path_name(char *dst, const char *src)
{
 int name_len;





 name_len = strscpy(dst, src, PATH_MAX);
 if (WARN_ON_ONCE(name_len < 0))
  name_len = PATH_MAX-1;


 name_len++;
 return name_len;
}
