
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
 unsigned char inb_p (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tachometer ;
 int type ;
 int wdt_lock ;

__attribute__((used)) static int wdt_get_status(void)
{
 unsigned char new_status;
 int status = 0;
 unsigned long flags;

 spin_lock_irqsave(&wdt_lock, flags);
 new_status = inb_p(WDT_SR);
 spin_unlock_irqrestore(&wdt_lock, flags);

 if (new_status & WDC_SR_ISOI0)
  status |= WDIOF_EXTERN1;
 if (new_status & WDC_SR_ISII1)
  status |= WDIOF_EXTERN2;
 if (type == 501) {
  if (!(new_status & WDC_SR_TGOOD))
   status |= WDIOF_OVERHEAT;
  if (!(new_status & WDC_SR_PSUOVER))
   status |= WDIOF_POWEROVER;
  if (!(new_status & WDC_SR_PSUUNDR))
   status |= WDIOF_POWERUNDER;
  if (tachometer) {
   if (!(new_status & WDC_SR_FANGOOD))
    status |= WDIOF_FANFAULT;
  }
 }
 return status;
}
