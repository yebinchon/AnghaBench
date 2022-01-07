
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visornic_devdata {int irq_poll_timer; int interrupt_rcvd; int napi; TYPE_1__* dev; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int visorchannel; } ;


 int IOCHAN_FROM_IOPART ;
 int atomic_set (int *,int ) ;
 struct visornic_devdata* devdata ;
 struct visornic_devdata* from_timer (int ,struct timer_list*,int ) ;
 int irq_poll_timer ;
 int mod_timer (int *,int ) ;
 int msecs_to_jiffies (int) ;
 int napi_schedule (int *) ;
 int visorchannel_signalempty (int ,int ) ;

__attribute__((used)) static void poll_for_irq(struct timer_list *t)
{
 struct visornic_devdata *devdata = from_timer(devdata, t,
            irq_poll_timer);

 if (!visorchannel_signalempty(
       devdata->dev->visorchannel,
       IOCHAN_FROM_IOPART))
  napi_schedule(&devdata->napi);

 atomic_set(&devdata->interrupt_rcvd, 0);

 mod_timer(&devdata->irq_poll_timer, msecs_to_jiffies(2));
}
