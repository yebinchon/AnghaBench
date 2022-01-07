
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xenbus_watch {int dummy; } ;
struct xenbus_transaction {int dummy; } ;
struct TYPE_3__ {int (* cb ) () ;int command; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EAGAIN ;
 scalar_t__ SHUTDOWN_INVALID ;
 scalar_t__ XENBUS_IS_ERR_READ (char*) ;
 int kfree (char*) ;
 int pr_info (char*,char*) ;
 TYPE_1__* shutdown_handlers ;
 scalar_t__ shutting_down ;
 scalar_t__ strcmp (char*,int ) ;
 int stub1 () ;
 scalar_t__ xenbus_read (struct xenbus_transaction,char*,char*,int *) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;
 int xenbus_write (struct xenbus_transaction,char*,char*,char*) ;

__attribute__((used)) static void shutdown_handler(struct xenbus_watch *watch,
        const char *path, const char *token)
{
 char *str;
 struct xenbus_transaction xbt;
 int err;
 int idx;

 if (shutting_down != SHUTDOWN_INVALID)
  return;

 again:
 err = xenbus_transaction_start(&xbt);
 if (err)
  return;

 str = (char *)xenbus_read(xbt, "control", "shutdown", ((void*)0));

 if (XENBUS_IS_ERR_READ(str)) {
  xenbus_transaction_end(xbt, 1);
  return;
 }

 for (idx = 0; idx < ARRAY_SIZE(shutdown_handlers); idx++) {
  if (strcmp(str, shutdown_handlers[idx].command) == 0)
   break;
 }


 if (idx < ARRAY_SIZE(shutdown_handlers))
  xenbus_write(xbt, "control", "shutdown", "");

 err = xenbus_transaction_end(xbt, 0);
 if (err == -EAGAIN) {
  kfree(str);
  goto again;
 }

 if (idx < ARRAY_SIZE(shutdown_handlers)) {
  shutdown_handlers[idx].cb();
 } else {
  pr_info("Ignoring shutdown request: %s\n", str);
  shutting_down = SHUTDOWN_INVALID;
 }

 kfree(str);
}
