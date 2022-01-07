
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char WDC_SR_FANGOOD ;
 unsigned char WDC_SR_ISII1 ;
 unsigned char WDC_SR_ISOI0 ;
 unsigned char WDC_SR_PSUOVER ;
 unsigned char WDC_SR_PSUUNDR ;
 unsigned char WDC_SR_TGOOD ;
 int WDIOF_EXTERN1 ;
 int WDIOF_EXTERN2 ;
 int WDIOF_FANFAULT ;
 int WDIOF_OVERHEAT ;
 int WDIOF_POWEROVER ;
 int WDIOF_POWERUNDER ;
 int WDT_SR ;
 unsigned char inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tachometer ;
 int type ;
 int wdtpci_lock ;

__attribute__((used)) static int wdtpci_get_status(int *status)
{
 unsigned char new_status;
 unsigned long flags;

 spin_lock_irqsave(&wdtpci_lock, flags);
 new_status = inb(WDT_SR);
 spin_unlock_irqrestore(&wdtpci_lock, flags);

 *status = 0;
 if (new_status & WDC_SR_ISOI0)
  *status |= WDIOF_EXTERN1;
 if (new_status & WDC_SR_ISII1)
  *status |= WDIOF_EXTERN2;
 if (type == 501) {
  if (!(new_status & WDC_SR_TGOOD))
   *status |= WDIOF_OVERHEAT;
  if (!(new_status & WDC_SR_PSUOVER))
   *status |= WDIOF_POWEROVER;
  if (!(new_status & WDC_SR_PSUUNDR))
   *status |= WDIOF_POWERUNDER;
  if (tachometer) {
   if (!(new_status & WDC_SR_FANGOOD))
    *status |= WDIOF_FANFAULT;
  }
 }
 return 0;
}
