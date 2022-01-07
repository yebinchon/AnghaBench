
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_channel {int tasklet; } ;
struct timer_list {int dummy; } ;


 struct usbatm_channel* channel ;
 int delay ;
 struct usbatm_channel* from_timer (int ,struct timer_list*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void usbatm_tasklet_schedule(struct timer_list *t)
{
 struct usbatm_channel *channel = from_timer(channel, t, delay);

 tasklet_schedule(&channel->tasklet);
}
