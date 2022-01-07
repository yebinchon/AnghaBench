
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int id; } ;


 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int XBT_NIL ;
 int XS_TRANSACTION_START ;
 int kfree (char*) ;
 int simple_strtoul (char*,int *,int ) ;
 char* xs_single (int ,int ,char*,int *) ;

int xenbus_transaction_start(struct xenbus_transaction *t)
{
 char *id_str;

 id_str = xs_single(XBT_NIL, XS_TRANSACTION_START, "", ((void*)0));
 if (IS_ERR(id_str))
  return PTR_ERR(id_str);

 t->id = simple_strtoul(id_str, ((void*)0), 0);
 kfree(id_str);
 return 0;
}
