
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ U300_WDOG_IER ;
 int U300_WDOG_IER_WILL_BARK_IRQ_ACK_ENABLE ;
 scalar_t__ U300_WDOG_IER_WILL_BARK_IRQ_EVENT_IND ;
 scalar_t__ U300_WDOG_IMR ;
 int dev_crit (int ,char*) ;
 int parent ;
 scalar_t__ readw (scalar_t__) ;
 scalar_t__ virtbase ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t coh901327_interrupt(int irq, void *data)
{
 u16 val;
 val = readw(virtbase + U300_WDOG_IER);
 if (val == U300_WDOG_IER_WILL_BARK_IRQ_EVENT_IND)
  writew(U300_WDOG_IER_WILL_BARK_IRQ_ACK_ENABLE,
         virtbase + U300_WDOG_IER);
 writew(0x0000U, virtbase + U300_WDOG_IMR);
 dev_crit(parent, "watchdog is barking!\n");
 return IRQ_HANDLED;
}
