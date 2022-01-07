
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_kona_wdt {int lock; scalar_t__ base; } ;


 scalar_t__ SECWDOG_CTRL_REG ;
 int secure_register_read (struct bcm_kona_wdt*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int bcm_kona_wdt_ctrl_reg_modify(struct bcm_kona_wdt *wdt,
     unsigned mask, unsigned newval)
{
 int val;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&wdt->lock, flags);

 val = secure_register_read(wdt, SECWDOG_CTRL_REG);
 if (val < 0) {
  ret = val;
 } else {
  val &= ~mask;
  val |= newval;
  writel_relaxed(val, wdt->base + SECWDOG_CTRL_REG);
 }

 spin_unlock_irqrestore(&wdt->lock, flags);

 return ret;
}
