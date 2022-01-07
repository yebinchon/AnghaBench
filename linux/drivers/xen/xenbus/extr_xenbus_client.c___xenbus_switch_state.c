
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;
struct xenbus_device {int state; int nodename; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int EAGAIN ;
 int xenbus_printf (struct xenbus_transaction,int ,char*,char*,int) ;
 int xenbus_scanf (struct xenbus_transaction,int ,char*,char*,int*) ;
 int xenbus_switch_fatal (struct xenbus_device*,int,int,char*) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;

__attribute__((used)) static int
__xenbus_switch_state(struct xenbus_device *dev,
        enum xenbus_state state, int depth)
{
 struct xenbus_transaction xbt;
 int current_state;
 int err, abort;

 if (state == dev->state)
  return 0;

again:
 abort = 1;

 err = xenbus_transaction_start(&xbt);
 if (err) {
  xenbus_switch_fatal(dev, depth, err, "starting transaction");
  return 0;
 }

 err = xenbus_scanf(xbt, dev->nodename, "state", "%d", &current_state);
 if (err != 1)
  goto abort;

 err = xenbus_printf(xbt, dev->nodename, "state", "%d", state);
 if (err) {
  xenbus_switch_fatal(dev, depth, err, "writing new state");
  goto abort;
 }

 abort = 0;
abort:
 err = xenbus_transaction_end(xbt, abort);
 if (err) {
  if (err == -EAGAIN && !abort)
   goto again;
  xenbus_switch_fatal(dev, depth, err, "ending transaction");
 } else
  dev->state = state;

 return 0;
}
