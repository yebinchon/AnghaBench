
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger_platform_data {int irq_gpio; } ;
struct smb347_charger {int regmap; struct smb347_charger_platform_data* pdata; } ;
struct i2c_client {int irq; int name; } ;


 int CFG_STAT ;
 int CFG_STAT_ACTIVE_HIGH ;
 int CFG_STAT_DISABLED ;
 int GPIOF_IN ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int free_irq (int,struct smb347_charger*) ;
 int gpio_free (int ) ;
 int gpio_request_one (int ,int ,int ) ;
 int gpio_to_irq (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int request_threaded_irq (int,int *,int ,int,int ,struct smb347_charger*) ;
 int smb347_interrupt ;
 int smb347_set_writable (struct smb347_charger*,int) ;

__attribute__((used)) static int smb347_irq_init(struct smb347_charger *smb,
      struct i2c_client *client)
{
 const struct smb347_charger_platform_data *pdata = smb->pdata;
 int ret, irq = gpio_to_irq(pdata->irq_gpio);

 ret = gpio_request_one(pdata->irq_gpio, GPIOF_IN, client->name);
 if (ret < 0)
  goto fail;

 ret = request_threaded_irq(irq, ((void*)0), smb347_interrupt,
       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
       client->name, smb);
 if (ret < 0)
  goto fail_gpio;

 ret = smb347_set_writable(smb, 1);
 if (ret < 0)
  goto fail_irq;





 ret = regmap_update_bits(smb->regmap, CFG_STAT,
     CFG_STAT_ACTIVE_HIGH | CFG_STAT_DISABLED,
     CFG_STAT_DISABLED);
 if (ret < 0)
  goto fail_readonly;

 smb347_set_writable(smb, 0);
 client->irq = irq;
 return 0;

fail_readonly:
 smb347_set_writable(smb, 0);
fail_irq:
 free_irq(irq, smb);
fail_gpio:
 gpio_free(pdata->irq_gpio);
fail:
 client->irq = 0;
 return ret;
}
