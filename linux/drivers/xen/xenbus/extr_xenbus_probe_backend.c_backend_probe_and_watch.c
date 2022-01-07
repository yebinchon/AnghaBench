
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int be_watch ;
 int register_xenbus_watch (int *) ;
 int xenbus_backend ;
 int xenbus_probe_devices (int *) ;

__attribute__((used)) static int backend_probe_and_watch(struct notifier_block *notifier,
       unsigned long event,
       void *data)
{

 xenbus_probe_devices(&xenbus_backend);
 register_xenbus_watch(&be_watch);

 return NOTIFY_DONE;
}
