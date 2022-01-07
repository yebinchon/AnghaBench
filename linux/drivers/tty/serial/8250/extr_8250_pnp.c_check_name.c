
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** modem_names ;
 scalar_t__ strstr (char const*,char const*) ;

__attribute__((used)) static bool check_name(const char *name)
{
 const char **tmp;

 for (tmp = modem_names; *tmp; tmp++)
  if (strstr(name, *tmp))
   return 1;

 return 0;
}
