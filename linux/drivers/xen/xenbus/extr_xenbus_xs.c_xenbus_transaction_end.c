
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;


 int XS_TRANSACTION_END ;
 int strcpy (char*,char*) ;
 int xs_error (int ) ;
 int xs_single (struct xenbus_transaction,int ,char*,int *) ;

int xenbus_transaction_end(struct xenbus_transaction t, int abort)
{
 char abortstr[2];

 if (abort)
  strcpy(abortstr, "F");
 else
  strcpy(abortstr, "T");

 return xs_error(xs_single(t, XS_TRANSACTION_END, abortstr, ((void*)0)));
}
