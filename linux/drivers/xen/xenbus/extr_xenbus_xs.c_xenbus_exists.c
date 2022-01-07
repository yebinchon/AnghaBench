
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;


 scalar_t__ IS_ERR (char**) ;
 int kfree (char**) ;
 char** xenbus_directory (struct xenbus_transaction,char const*,char const*,int*) ;

int xenbus_exists(struct xenbus_transaction t,
    const char *dir, const char *node)
{
 char **d;
 int dir_n;

 d = xenbus_directory(t, dir, node, &dir_n);
 if (IS_ERR(d))
  return 0;
 kfree(d);
 return 1;
}
