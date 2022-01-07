
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int fe_watch ;
 int register_xenbus_watch (int *) ;
 scalar_t__ xen_hvm_domain () ;
 int xenbus_frontend ;
 int xenbus_probe_devices (int *) ;
 int xenbus_reset_state () ;

__attribute__((used)) static int frontend_probe_and_watch(struct notifier_block *notifier,
       unsigned long event,
       void *data)
{

 if (xen_hvm_domain())
  xenbus_reset_state();

 xenbus_probe_devices(&xenbus_frontend);
 register_xenbus_watch(&fe_watch);

 return NOTIFY_DONE;
}
