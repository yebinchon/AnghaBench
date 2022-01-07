
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada_37xx_pinctrl {int irq_lock; scalar_t__ base; int regmap; } ;


 int GPIO_PER_REG ;
 scalar_t__ INPUT_VAL ;
 scalar_t__ IRQ_POL ;
 int readl (scalar_t__) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int armada_37xx_edge_both_irq_swap_pol(struct armada_37xx_pinctrl *info,
          u32 pin_idx)
{
 u32 reg_idx = pin_idx / GPIO_PER_REG;
 u32 bit_num = pin_idx % GPIO_PER_REG;
 u32 p, l, ret;
 unsigned long flags;

 regmap_read(info->regmap, INPUT_VAL + 4*reg_idx, &l);

 spin_lock_irqsave(&info->irq_lock, flags);
 p = readl(info->base + IRQ_POL + 4 * reg_idx);
 if ((p ^ l) & (1 << bit_num)) {
  p ^= 1 << bit_num;
  writel(p, info->base + IRQ_POL + 4 * reg_idx);
  ret = 0;
 } else {

  ret = -1;
 }

 spin_unlock_irqrestore(&info->irq_lock, flags);
 return ret;
}
