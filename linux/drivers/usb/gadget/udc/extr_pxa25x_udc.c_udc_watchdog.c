
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pxa25x_udc {scalar_t__ ep0state; } ;


 int DBG (int ,char*) ;
 int DBG_VERBOSE ;
 scalar_t__ EP0_STALL ;
 int UDCCS0_FST ;
 int UDCCS0_FTF ;
 int UDCCS0_SST ;
 struct pxa25x_udc* dev ;
 struct pxa25x_udc* from_timer (int ,struct timer_list*,int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int start_watchdog (struct pxa25x_udc*) ;
 int timer ;
 int udc_ep0_get_UDCCS (struct pxa25x_udc*) ;
 int udc_ep0_set_UDCCS (struct pxa25x_udc*,int) ;

__attribute__((used)) static void udc_watchdog(struct timer_list *t)
{
 struct pxa25x_udc *dev = from_timer(dev, t, timer);

 local_irq_disable();
 if (dev->ep0state == EP0_STALL
   && (udc_ep0_get_UDCCS(dev) & UDCCS0_FST) == 0
   && (udc_ep0_get_UDCCS(dev) & UDCCS0_SST) == 0) {
  udc_ep0_set_UDCCS(dev, UDCCS0_FST|UDCCS0_FTF);
  DBG(DBG_VERBOSE, "ep0 re-stall\n");
  start_watchdog(dev);
 }
 local_irq_enable();
}
