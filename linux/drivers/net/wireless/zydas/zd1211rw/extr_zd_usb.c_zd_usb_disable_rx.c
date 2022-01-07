
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_rx {int idle_work; int reset_timer_tasklet; int setup_mutex; } ;
struct zd_usb {struct zd_usb_rx rx; } ;


 int __zd_usb_disable_rx (struct zd_usb*) ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_kill (int *) ;

void zd_usb_disable_rx(struct zd_usb *usb)
{
 struct zd_usb_rx *rx = &usb->rx;

 mutex_lock(&rx->setup_mutex);
 __zd_usb_disable_rx(usb);
 mutex_unlock(&rx->setup_mutex);

 tasklet_kill(&rx->reset_timer_tasklet);
 cancel_delayed_work_sync(&rx->idle_work);
}
