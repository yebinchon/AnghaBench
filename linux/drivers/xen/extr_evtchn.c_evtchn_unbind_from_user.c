
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int port; } ;
struct per_user_data {int dummy; } ;


 int BUG_ON (int) ;
 int del_evtchn (struct per_user_data*,struct user_evtchn*) ;
 int irq_from_evtchn (int ) ;
 int unbind_from_irqhandler (int,struct user_evtchn*) ;

__attribute__((used)) static void evtchn_unbind_from_user(struct per_user_data *u,
        struct user_evtchn *evtchn)
{
 int irq = irq_from_evtchn(evtchn->port);

 BUG_ON(irq < 0);

 unbind_from_irqhandler(irq, evtchn);

 del_evtchn(u, evtchn);
}
