
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_channel {int delay; int list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int usbatm_tasklet_schedule ;

__attribute__((used)) static void usbatm_init_channel(struct usbatm_channel *channel)
{
 spin_lock_init(&channel->lock);
 INIT_LIST_HEAD(&channel->list);
 timer_setup(&channel->delay, usbatm_tasklet_schedule, 0);
}
