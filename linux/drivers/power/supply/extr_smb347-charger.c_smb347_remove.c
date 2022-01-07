
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb347_charger {int mains; TYPE_1__* pdata; int usb; int battery; } ;
struct i2c_client {scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ use_mains; scalar_t__ use_usb; int irq_gpio; } ;


 int free_irq (scalar_t__,struct smb347_charger*) ;
 int gpio_free (int ) ;
 struct smb347_charger* i2c_get_clientdata (struct i2c_client*) ;
 int power_supply_unregister (int ) ;
 int smb347_irq_disable (struct smb347_charger*) ;

__attribute__((used)) static int smb347_remove(struct i2c_client *client)
{
 struct smb347_charger *smb = i2c_get_clientdata(client);

 if (client->irq) {
  smb347_irq_disable(smb);
  free_irq(client->irq, smb);
  gpio_free(smb->pdata->irq_gpio);
 }

 power_supply_unregister(smb->battery);
 if (smb->pdata->use_usb)
  power_supply_unregister(smb->usb);
 if (smb->pdata->use_mains)
  power_supply_unregister(smb->mains);
 return 0;
}
