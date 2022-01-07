
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 char* dev_name (struct device*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool dev_name_ends_with(struct device *dev, const char *suffix)
{
 const char *name = dev_name(dev);
 const int name_len = strlen(name);
 const int suffix_len = strlen(suffix);

 if (suffix_len > name_len)
  return 0;

 return strcmp(name + (name_len - suffix_len), suffix) == 0;
}
