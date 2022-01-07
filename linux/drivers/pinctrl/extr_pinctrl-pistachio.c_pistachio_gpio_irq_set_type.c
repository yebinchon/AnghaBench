
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_gpio_bank {int dummy; } ;
struct irq_data {int hwirq; } ;


 int EINVAL ;
 int GPIO_INPUT_POLARITY ;
 int GPIO_INTERRUPT_EDGE ;
 int GPIO_INTERRUPT_EDGE_DUAL ;
 int GPIO_INTERRUPT_EDGE_SINGLE ;
 int GPIO_INTERRUPT_TYPE ;
 int GPIO_INTERRUPT_TYPE_EDGE ;
 int GPIO_INTERRUPT_TYPE_LEVEL ;





 unsigned int IRQ_TYPE_LEVEL_MASK ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 int gpio_mask_writel (struct pistachio_gpio_bank*,int ,int ,int) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 struct pistachio_gpio_bank* irqd_to_bank (struct irq_data*) ;

__attribute__((used)) static int pistachio_gpio_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct pistachio_gpio_bank *bank = irqd_to_bank(data);

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 130:
  gpio_mask_writel(bank, GPIO_INPUT_POLARITY, data->hwirq, 1);
  gpio_mask_writel(bank, GPIO_INTERRUPT_TYPE, data->hwirq,
     GPIO_INTERRUPT_TYPE_EDGE);
  gpio_mask_writel(bank, GPIO_INTERRUPT_EDGE, data->hwirq,
     GPIO_INTERRUPT_EDGE_SINGLE);
  break;
 case 131:
  gpio_mask_writel(bank, GPIO_INPUT_POLARITY, data->hwirq, 0);
  gpio_mask_writel(bank, GPIO_INTERRUPT_TYPE, data->hwirq,
     GPIO_INTERRUPT_TYPE_EDGE);
  gpio_mask_writel(bank, GPIO_INTERRUPT_EDGE, data->hwirq,
     GPIO_INTERRUPT_EDGE_SINGLE);
  break;
 case 132:
  gpio_mask_writel(bank, GPIO_INTERRUPT_TYPE, data->hwirq,
     GPIO_INTERRUPT_TYPE_EDGE);
  gpio_mask_writel(bank, GPIO_INTERRUPT_EDGE, data->hwirq,
     GPIO_INTERRUPT_EDGE_DUAL);
  break;
 case 129:
  gpio_mask_writel(bank, GPIO_INPUT_POLARITY, data->hwirq, 1);
  gpio_mask_writel(bank, GPIO_INTERRUPT_TYPE, data->hwirq,
     GPIO_INTERRUPT_TYPE_LEVEL);
  break;
 case 128:
  gpio_mask_writel(bank, GPIO_INPUT_POLARITY, data->hwirq, 0);
  gpio_mask_writel(bank, GPIO_INTERRUPT_TYPE, data->hwirq,
     GPIO_INTERRUPT_TYPE_LEVEL);
  break;
 default:
  return -EINVAL;
 }

 if (type & IRQ_TYPE_LEVEL_MASK)
  irq_set_handler_locked(data, handle_level_irq);
 else
  irq_set_handler_locked(data, handle_edge_irq);

 return 0;
}
