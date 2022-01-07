
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct msm_pingroup {int intr_detection_width; int intr_target_bit; int intr_target_kpss_val; int intr_raw_status_bit; int intr_detection_bit; int intr_polarity_bit; } ;
struct msm_pinctrl {int lock; int dual_edge_irqs; TYPE_1__* soc; } ;
struct irq_data {size_t hwirq; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct msm_pingroup* groups; } ;


 int BIT (int) ;
 int BUG () ;





 int clear_bit (size_t,int ) ;
 struct msm_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int msm_gpio_update_dual_edge_pos (struct msm_pinctrl*,struct msm_pingroup const*,struct irq_data*) ;
 int msm_readl_intr_cfg (struct msm_pinctrl*,struct msm_pingroup const*) ;
 int msm_readl_intr_target (struct msm_pinctrl*,struct msm_pingroup const*) ;
 int msm_writel_intr_cfg (int,struct msm_pinctrl*,struct msm_pingroup const*) ;
 int msm_writel_intr_target (int,struct msm_pinctrl*,struct msm_pingroup const*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int set_bit (size_t,int ) ;
 scalar_t__ test_bit (size_t,int ) ;

__attribute__((used)) static int msm_gpio_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct msm_pinctrl *pctrl = gpiochip_get_data(gc);
 const struct msm_pingroup *g;
 unsigned long flags;
 u32 val;

 g = &pctrl->soc->groups[d->hwirq];

 raw_spin_lock_irqsave(&pctrl->lock, flags);




 if (g->intr_detection_width == 1 && type == 132)
  set_bit(d->hwirq, pctrl->dual_edge_irqs);
 else
  clear_bit(d->hwirq, pctrl->dual_edge_irqs);


 val = msm_readl_intr_target(pctrl, g);
 val &= ~(7 << g->intr_target_bit);
 val |= g->intr_target_kpss_val << g->intr_target_bit;
 msm_writel_intr_target(val, pctrl, g);






 val = msm_readl_intr_cfg(pctrl, g);
 val |= BIT(g->intr_raw_status_bit);
 if (g->intr_detection_width == 2) {
  val &= ~(3 << g->intr_detection_bit);
  val &= ~(1 << g->intr_polarity_bit);
  switch (type) {
  case 130:
   val |= 1 << g->intr_detection_bit;
   val |= BIT(g->intr_polarity_bit);
   break;
  case 131:
   val |= 2 << g->intr_detection_bit;
   val |= BIT(g->intr_polarity_bit);
   break;
  case 132:
   val |= 3 << g->intr_detection_bit;
   val |= BIT(g->intr_polarity_bit);
   break;
  case 128:
   break;
  case 129:
   val |= BIT(g->intr_polarity_bit);
   break;
  }
 } else if (g->intr_detection_width == 1) {
  val &= ~(1 << g->intr_detection_bit);
  val &= ~(1 << g->intr_polarity_bit);
  switch (type) {
  case 130:
   val |= BIT(g->intr_detection_bit);
   val |= BIT(g->intr_polarity_bit);
   break;
  case 131:
   val |= BIT(g->intr_detection_bit);
   break;
  case 132:
   val |= BIT(g->intr_detection_bit);
   val |= BIT(g->intr_polarity_bit);
   break;
  case 128:
   break;
  case 129:
   val |= BIT(g->intr_polarity_bit);
   break;
  }
 } else {
  BUG();
 }
 msm_writel_intr_cfg(val, pctrl, g);

 if (test_bit(d->hwirq, pctrl->dual_edge_irqs))
  msm_gpio_update_dual_edge_pos(pctrl, g, d);

 raw_spin_unlock_irqrestore(&pctrl->lock, flags);

 if (type & (128 | 129))
  irq_set_handler_locked(d, handle_level_irq);
 else if (type & (131 | 130))
  irq_set_handler_locked(d, handle_edge_irq);

 return 0;
}
