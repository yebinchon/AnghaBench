
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pin_bank {int toggle_edge_mode; int clk; int slock; scalar_t__ reg_base; } ;
struct irq_data {int hwirq; } ;
struct irq_chip_generic {scalar_t__ reg_base; struct rockchip_pin_bank* private; } ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ GPIO_EXT_PORT ;
 scalar_t__ GPIO_INTTYPE_LEVEL ;
 scalar_t__ GPIO_INT_POLARITY ;
 scalar_t__ GPIO_SWPORT_DDR ;





 int RK_FUNC_GPIO ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int rockchip_set_mux (struct rockchip_pin_bank*,int ,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct rockchip_pin_bank *bank = gc->private;
 u32 mask = BIT(d->hwirq);
 u32 polarity;
 u32 level;
 u32 data;
 unsigned long flags;
 int ret;


 ret = rockchip_set_mux(bank, d->hwirq, RK_FUNC_GPIO);
 if (ret < 0)
  return ret;

 clk_enable(bank->clk);
 raw_spin_lock_irqsave(&bank->slock, flags);

 data = readl_relaxed(bank->reg_base + GPIO_SWPORT_DDR);
 data &= ~mask;
 writel_relaxed(data, bank->reg_base + GPIO_SWPORT_DDR);

 raw_spin_unlock_irqrestore(&bank->slock, flags);

 if (type & 132)
  irq_set_handler_locked(d, handle_edge_irq);
 else
  irq_set_handler_locked(d, handle_level_irq);

 raw_spin_lock_irqsave(&bank->slock, flags);
 irq_gc_lock(gc);

 level = readl_relaxed(gc->reg_base + GPIO_INTTYPE_LEVEL);
 polarity = readl_relaxed(gc->reg_base + GPIO_INT_POLARITY);

 switch (type) {
 case 132:
  bank->toggle_edge_mode |= mask;
  level |= mask;





  data = readl(bank->reg_base + GPIO_EXT_PORT);
  if (data & mask)
   polarity &= ~mask;
  else
   polarity |= mask;
  break;
 case 130:
  bank->toggle_edge_mode &= ~mask;
  level |= mask;
  polarity |= mask;
  break;
 case 131:
  bank->toggle_edge_mode &= ~mask;
  level |= mask;
  polarity &= ~mask;
  break;
 case 129:
  bank->toggle_edge_mode &= ~mask;
  level &= ~mask;
  polarity |= mask;
  break;
 case 128:
  bank->toggle_edge_mode &= ~mask;
  level &= ~mask;
  polarity &= ~mask;
  break;
 default:
  irq_gc_unlock(gc);
  raw_spin_unlock_irqrestore(&bank->slock, flags);
  clk_disable(bank->clk);
  return -EINVAL;
 }

 writel_relaxed(level, gc->reg_base + GPIO_INTTYPE_LEVEL);
 writel_relaxed(polarity, gc->reg_base + GPIO_INT_POLARITY);

 irq_gc_unlock(gc);
 raw_spin_unlock_irqrestore(&bank->slock, flags);
 clk_disable(bank->clk);

 return 0;
}
