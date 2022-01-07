
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_rtc_config {int lock; scalar_t__ ioaddr; } ;


 int EIO ;
 int STATUS_FAIL ;
 scalar_t__ STATUS_REG ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int is_write_complete(struct spear_rtc_config *config)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&config->lock, flags);
 if ((readl(config->ioaddr + STATUS_REG)) & STATUS_FAIL)
  ret = -EIO;
 spin_unlock_irqrestore(&config->lock, flags);

 return ret;
}
