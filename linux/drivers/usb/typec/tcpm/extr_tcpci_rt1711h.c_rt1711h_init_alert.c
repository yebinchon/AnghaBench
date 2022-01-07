
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1711h_chip {int dev; } ;
struct i2c_client {int irq; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int TCPC_ALERT_MASK ;
 int dev_name (int ) ;
 int devm_request_threaded_irq (int ,int ,int *,int ,int,int ,struct rt1711h_chip*) ;
 int enable_irq_wake (int ) ;
 int rt1711h_irq ;
 int rt1711h_write16 (struct rt1711h_chip*,int ,int ) ;

__attribute__((used)) static int rt1711h_init_alert(struct rt1711h_chip *chip,
         struct i2c_client *client)
{
 int ret;


 ret = rt1711h_write16(chip, TCPC_ALERT_MASK, 0);
 if (ret < 0)
  return ret;

 ret = devm_request_threaded_irq(chip->dev, client->irq, ((void*)0),
     rt1711h_irq,
     IRQF_ONESHOT | IRQF_TRIGGER_LOW,
     dev_name(chip->dev), chip);
 if (ret < 0)
  return ret;
 enable_irq_wake(client->irq);
 return 0;
}
