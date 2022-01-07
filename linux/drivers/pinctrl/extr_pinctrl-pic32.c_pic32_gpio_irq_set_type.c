
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int CNCON_REG ;
 int CNEN_REG ;
 int CNNE_REG ;
 int EINVAL ;



 unsigned int IRQ_TYPE_SENSE_MASK ;
 scalar_t__ PIC32_CLR (int ) ;
 int PIC32_CNCON_EDGE ;
 scalar_t__ PIC32_SET (int ) ;
 int handle_edge_irq ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 struct pic32_gpio_bank* irqd_to_bank (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pic32_gpio_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct pic32_gpio_bank *bank = irqd_to_bank(data);
 u32 mask = BIT(data->hwirq);

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 128:

  writel(mask, bank->reg_base + PIC32_SET(CNEN_REG));

  writel(mask, bank->reg_base + PIC32_CLR(CNNE_REG));

  writel(BIT(PIC32_CNCON_EDGE), bank->reg_base + PIC32_SET(CNCON_REG));
  break;
 case 129:

  writel(mask, bank->reg_base + PIC32_CLR(CNEN_REG));

  writel(mask, bank->reg_base + PIC32_SET(CNNE_REG));

  writel(BIT(PIC32_CNCON_EDGE), bank->reg_base + PIC32_SET(CNCON_REG));
  break;
 case 130:

  writel(mask, bank->reg_base + PIC32_SET(CNEN_REG));

  writel(mask, bank->reg_base + PIC32_SET(CNNE_REG));

  writel(BIT(PIC32_CNCON_EDGE), bank->reg_base + PIC32_SET(CNCON_REG));
  break;
 default:
  return -EINVAL;
 }

 irq_set_handler_locked(data, handle_edge_irq);

 return 0;
}
