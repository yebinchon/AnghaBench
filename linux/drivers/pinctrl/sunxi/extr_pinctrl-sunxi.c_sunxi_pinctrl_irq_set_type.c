
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sunxi_pinctrl {int membase; int lock; int desc; } ;
struct irq_data {int hwirq; } ;


 int EINVAL ;
 int IRQ_CFG_IRQ_MASK ;
 int IRQ_EDGE_BOTH ;
 int IRQ_EDGE_FALLING ;
 int IRQ_EDGE_RISING ;
 int IRQ_LEVEL_HIGH ;
 int IRQ_LEVEL_LOW ;





 unsigned int IRQ_TYPE_LEVEL_MASK ;
 int handle_edge_irq ;
 int handle_fasteoi_irq ;
 struct sunxi_pinctrl* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_chip_handler_name_locked (struct irq_data*,int *,int ,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int) ;
 int sunxi_irq_cfg_offset (int ) ;
 int sunxi_irq_cfg_reg (int ,int ) ;
 int sunxi_pinctrl_edge_irq_chip ;
 int sunxi_pinctrl_level_irq_chip ;
 int writel (int,int) ;

__attribute__((used)) static int sunxi_pinctrl_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct sunxi_pinctrl *pctl = irq_data_get_irq_chip_data(d);
 u32 reg = sunxi_irq_cfg_reg(pctl->desc, d->hwirq);
 u8 index = sunxi_irq_cfg_offset(d->hwirq);
 unsigned long flags;
 u32 regval;
 u8 mode;

 switch (type) {
 case 130:
  mode = IRQ_EDGE_RISING;
  break;
 case 131:
  mode = IRQ_EDGE_FALLING;
  break;
 case 132:
  mode = IRQ_EDGE_BOTH;
  break;
 case 129:
  mode = IRQ_LEVEL_HIGH;
  break;
 case 128:
  mode = IRQ_LEVEL_LOW;
  break;
 default:
  return -EINVAL;
 }

 raw_spin_lock_irqsave(&pctl->lock, flags);

 if (type & IRQ_TYPE_LEVEL_MASK)
  irq_set_chip_handler_name_locked(d, &sunxi_pinctrl_level_irq_chip,
       handle_fasteoi_irq, ((void*)0));
 else
  irq_set_chip_handler_name_locked(d, &sunxi_pinctrl_edge_irq_chip,
       handle_edge_irq, ((void*)0));

 regval = readl(pctl->membase + reg);
 regval &= ~(IRQ_CFG_IRQ_MASK << index);
 writel(regval | (mode << index), pctl->membase + reg);

 raw_spin_unlock_irqrestore(&pctl->lock, flags);

 return 0;
}
