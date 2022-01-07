
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int XS_DIRECTORY ;
 char* join (char const*,char const*) ;
 int kfree (char*) ;
 char** split (char*,unsigned int,unsigned int*) ;
 char* xs_single (struct xenbus_transaction,int ,char*,unsigned int*) ;

char **xenbus_directory(struct xenbus_transaction t,
   const char *dir, const char *node, unsigned int *num)
{
 char *strings, *path;
 unsigned int len;

 path = join(dir, node);
 if (IS_ERR(path))
  return (char **)path;

 strings = xs_single(t, XS_DIRECTORY, path, &len);
 kfree(path);
 if (IS_ERR(strings))
  return (char **)strings;

 return split(strings, len, num);
}
