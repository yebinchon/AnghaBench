
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 int __clk_enable (struct clk*) ;
 int clock_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int clk_enable(struct clk *clk)
{
 unsigned long flags;
 int ret;

 if (!clk)
  return -EINVAL;

 spin_lock_irqsave(&clock_lock, flags);
 ret = __clk_enable(clk);
 spin_unlock_irqrestore(&clock_lock, flags);

 return ret;
}
