
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3630a_chip {int irqthread; scalar_t__ irq; int dev; } ;
struct i2c_client {int dummy; } ;


 int REG_BRT_A ;
 int REG_BRT_B ;
 int destroy_workqueue (int ) ;
 int dev_err (int ,char*) ;
 int flush_workqueue (int ) ;
 int free_irq (scalar_t__,struct lm3630a_chip*) ;
 struct lm3630a_chip* i2c_get_clientdata (struct i2c_client*) ;
 int lm3630a_write (struct lm3630a_chip*,int ,int ) ;

__attribute__((used)) static int lm3630a_remove(struct i2c_client *client)
{
 int rval;
 struct lm3630a_chip *pchip = i2c_get_clientdata(client);

 rval = lm3630a_write(pchip, REG_BRT_A, 0);
 if (rval < 0)
  dev_err(pchip->dev, "i2c failed to access register\n");

 rval = lm3630a_write(pchip, REG_BRT_B, 0);
 if (rval < 0)
  dev_err(pchip->dev, "i2c failed to access register\n");

 if (pchip->irq) {
  free_irq(pchip->irq, pchip);
  flush_workqueue(pchip->irqthread);
  destroy_workqueue(pchip->irqthread);
 }
 return 0;
}
