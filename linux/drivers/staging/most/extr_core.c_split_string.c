
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int split_string(char *buf, char **a, char **b, char **c, char **d)
{
 *a = strsep(&buf, ":");
 if (!*a)
  return -EIO;

 *b = strsep(&buf, ":\n");
 if (!*b)
  return -EIO;

 *c = strsep(&buf, ":\n");
 if (!*c)
  return -EIO;

 if (d)
  *d = strsep(&buf, ":\n");

 return 0;
}
