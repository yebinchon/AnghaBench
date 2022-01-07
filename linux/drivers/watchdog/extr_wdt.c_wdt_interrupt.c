
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned char WDC_SR_FANGOOD ;
 unsigned char WDC_SR_WCCR ;
 int WDT_SR ;
 int emergency_restart () ;
 unsigned char inb_p (int ) ;
 int pr_crit (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tachometer ;
 int type ;
 int wdt_decode_501 (unsigned char) ;
 int wdt_lock ;

__attribute__((used)) static irqreturn_t wdt_interrupt(int irq, void *dev_id)
{




 unsigned char status;

 spin_lock(&wdt_lock);
 status = inb_p(WDT_SR);

 pr_crit("WDT status %d\n", status);

 if (type == 501) {
  wdt_decode_501(status);
  if (tachometer) {
   if (!(status & WDC_SR_FANGOOD))
    pr_crit("Possible fan fault\n");
  }
 }
 if (!(status & WDC_SR_WCCR)) {
  pr_crit("Reset in 5ms\n");

 }
 spin_unlock(&wdt_lock);
 return IRQ_HANDLED;
}
