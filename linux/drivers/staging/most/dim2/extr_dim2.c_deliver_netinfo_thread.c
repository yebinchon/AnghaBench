
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dim2_hdm {int mac_addrs; int link_state; int most_iface; int (* on_netinfo ) (int *,int ,int ) ;scalar_t__ deliver_netinfo; int netinfo_waitq; } ;


 scalar_t__ kthread_should_stop () ;
 int stub1 (int *,int ,int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int deliver_netinfo_thread(void *data)
{
 struct dim2_hdm *dev = data;

 while (!kthread_should_stop()) {
  wait_event_interruptible(dev->netinfo_waitq,
      dev->deliver_netinfo ||
      kthread_should_stop());

  if (dev->deliver_netinfo) {
   dev->deliver_netinfo--;
   if (dev->on_netinfo) {
    dev->on_netinfo(&dev->most_iface,
      dev->link_state,
      dev->mac_addrs);
   }
  }
 }

 return 0;
}
