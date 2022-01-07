
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int EOVERFLOW ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int usb_string_copy(const char *s, char **s_copy)
{
 int ret;
 char *str;
 char *copy = *s_copy;
 ret = strlen(s);
 if (ret > 126)
  return -EOVERFLOW;

 str = kstrdup(s, GFP_KERNEL);
 if (!str)
  return -ENOMEM;
 if (str[ret - 1] == '\n')
  str[ret - 1] = '\0';
 kfree(copy);
 *s_copy = str;
 return 0;
}
