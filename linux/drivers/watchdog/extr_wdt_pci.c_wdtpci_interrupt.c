
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned char WDC_SR_FANGOOD ;
 unsigned char WDC_SR_PSUOVER ;
 unsigned char WDC_SR_PSUUNDR ;
 unsigned char WDC_SR_TGOOD ;
 unsigned char WDC_SR_WCCR ;
 int WDT_RT ;
 int WDT_SR ;
 int emergency_restart () ;
 unsigned char inb (int ) ;
 int pr_crit (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tachometer ;
 int type ;
 int udelay (int) ;
 int wdtpci_lock ;

__attribute__((used)) static irqreturn_t wdtpci_interrupt(int irq, void *dev_id)
{




 unsigned char status;

 spin_lock(&wdtpci_lock);

 status = inb(WDT_SR);
 udelay(8);

 pr_crit("status %d\n", status);

 if (type == 501) {
  if (!(status & WDC_SR_TGOOD)) {
   pr_crit("Overheat alarm (%d)\n", inb(WDT_RT));
   udelay(8);
  }
  if (!(status & WDC_SR_PSUOVER))
   pr_crit("PSU over voltage\n");
  if (!(status & WDC_SR_PSUUNDR))
   pr_crit("PSU under voltage\n");
  if (tachometer) {
   if (!(status & WDC_SR_FANGOOD))
    pr_crit("Possible fan fault\n");
  }
 }
 if (!(status & WDC_SR_WCCR)) {
  pr_crit("Reset in 5ms\n");

 }
 spin_unlock(&wdtpci_lock);
 return IRQ_HANDLED;
}
