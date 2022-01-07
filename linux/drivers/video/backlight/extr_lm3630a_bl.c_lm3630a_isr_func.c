
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3630a_chip {int dev; int work; int irqthread; } ;
typedef int irqreturn_t ;


 int INT_DEBOUNCE_MSEC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_CTRL ;
 int dev_err (int ,char*) ;
 int lm3630a_update (struct lm3630a_chip*,int ,int,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static irqreturn_t lm3630a_isr_func(int irq, void *chip)
{
 int rval;
 struct lm3630a_chip *pchip = chip;
 unsigned long delay = msecs_to_jiffies(INT_DEBOUNCE_MSEC);

 queue_delayed_work(pchip->irqthread, &pchip->work, delay);

 rval = lm3630a_update(pchip, REG_CTRL, 0x80, 0x00);
 if (rval < 0) {
  dev_err(pchip->dev, "i2c failed to access register\n");
  return IRQ_NONE;
 }
 return IRQ_HANDLED;
}
