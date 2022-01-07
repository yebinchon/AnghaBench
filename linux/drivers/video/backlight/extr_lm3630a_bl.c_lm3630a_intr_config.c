
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3630a_chip {int irqthread; int dev; int irq; int work; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int REG_INT_EN ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_err (int ,char*) ;
 int lm3630a_delayed_func ;
 int lm3630a_isr_func ;
 int lm3630a_write (struct lm3630a_chip*,int ,int) ;
 scalar_t__ request_threaded_irq (int ,int *,int ,int,char*,struct lm3630a_chip*) ;

__attribute__((used)) static int lm3630a_intr_config(struct lm3630a_chip *pchip)
{
 int rval;

 rval = lm3630a_write(pchip, REG_INT_EN, 0x87);
 if (rval < 0)
  return rval;

 INIT_DELAYED_WORK(&pchip->work, lm3630a_delayed_func);
 pchip->irqthread = create_singlethread_workqueue("lm3630a-irqthd");
 if (!pchip->irqthread) {
  dev_err(pchip->dev, "create irq thread fail\n");
  return -ENOMEM;
 }
 if (request_threaded_irq
     (pchip->irq, ((void*)0), lm3630a_isr_func,
      IRQF_TRIGGER_FALLING | IRQF_ONESHOT, "lm3630a_irq", pchip)) {
  dev_err(pchip->dev, "request threaded irq fail\n");
  destroy_workqueue(pchip->irqthread);
  return -ENOMEM;
 }
 return rval;
}
