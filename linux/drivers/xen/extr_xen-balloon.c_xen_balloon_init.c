
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int balloon_dev ;
 int register_balloon (int *) ;
 int register_xenstore_notifier (int *) ;
 int xenstore_notifier ;

void xen_balloon_init(void)
{
 register_balloon(&balloon_dev);

 register_xenstore_notifier(&xenstore_notifier);
}
