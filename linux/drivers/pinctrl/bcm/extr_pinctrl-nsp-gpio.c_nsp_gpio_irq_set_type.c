
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {int dev; int lock; } ;
struct irq_data {unsigned int hwirq; } ;


 int EINVAL ;




 unsigned int IRQ_TYPE_SENSE_MASK ;
 int NSP_GPIO_EVENT_INT_POLARITY ;
 int NSP_GPIO_INT_POLARITY ;
 int REG ;
 int dev_dbg (int ,char*,unsigned int,char*,char*) ;
 int dev_err (int ,char*,unsigned int) ;
 struct nsp_gpio* irq_data_get_irq_chip_data (struct irq_data*) ;
 int nsp_get_bit (struct nsp_gpio*,int ,int ,unsigned int) ;
 int nsp_set_bit (struct nsp_gpio*,int ,int ,unsigned int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nsp_gpio_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
 unsigned gpio = d->hwirq;
 bool level_low;
 bool falling;
 unsigned long flags;

 raw_spin_lock_irqsave(&chip->lock, flags);
 falling = nsp_get_bit(chip, REG, NSP_GPIO_EVENT_INT_POLARITY, gpio);
 level_low = nsp_get_bit(chip, REG, NSP_GPIO_INT_POLARITY, gpio);

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 130:
  falling = 0;
  break;

 case 131:
  falling = 1;
  break;

 case 129:
  level_low = 0;
  break;

 case 128:
  level_low = 1;
  break;

 default:
  dev_err(chip->dev, "invalid GPIO IRQ type 0x%x\n",
   type);
  raw_spin_unlock_irqrestore(&chip->lock, flags);
  return -EINVAL;
 }

 nsp_set_bit(chip, REG, NSP_GPIO_EVENT_INT_POLARITY, gpio, falling);
 nsp_set_bit(chip, REG, NSP_GPIO_INT_POLARITY, gpio, level_low);
 raw_spin_unlock_irqrestore(&chip->lock, flags);

 dev_dbg(chip->dev, "gpio:%u level_low:%s falling:%s\n", gpio,
  level_low ? "true" : "false", falling ? "true" : "false");
 return 0;
}
