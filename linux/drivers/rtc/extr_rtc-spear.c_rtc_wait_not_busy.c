
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_rtc_config {int lock; scalar_t__ ioaddr; } ;


 int STATUS_BUSY ;
 scalar_t__ STATUS_REG ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtc_wait_not_busy(struct spear_rtc_config *config)
{
 int status, count = 0;
 unsigned long flags;


 for (count = 0; count < 80; count++) {
  spin_lock_irqsave(&config->lock, flags);
  status = readl(config->ioaddr + STATUS_REG);
  spin_unlock_irqrestore(&config->lock, flags);
  if ((status & STATUS_BUSY) == 0)
   break;

  msleep(1);
 }
}
