
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int regmap; } ;
struct tcpci_chip {int tcpci; TYPE_1__ data; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TCPC_ALERT_MASK ;
 int _tcpci_irq ;
 int dev_name (int *) ;
 struct tcpci_chip* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct tcpci_chip*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tcpci_chip*) ;
 int regmap_raw_write (int ,int ,int *,int) ;
 int tcpci_register_port (int *,TYPE_1__*) ;
 int tcpci_regmap_config ;
 int tcpci_unregister_port (int ) ;

__attribute__((used)) static int tcpci_probe(struct i2c_client *client,
         const struct i2c_device_id *i2c_id)
{
 struct tcpci_chip *chip;
 int err;
 u16 val = 0;

 chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->data.regmap = devm_regmap_init_i2c(client, &tcpci_regmap_config);
 if (IS_ERR(chip->data.regmap))
  return PTR_ERR(chip->data.regmap);

 i2c_set_clientdata(client, chip);


 err = regmap_raw_write(chip->data.regmap, TCPC_ALERT_MASK, &val,
          sizeof(u16));
 if (err < 0)
  return err;

 chip->tcpci = tcpci_register_port(&client->dev, &chip->data);
 if (IS_ERR(chip->tcpci))
  return PTR_ERR(chip->tcpci);

 err = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
     _tcpci_irq,
     IRQF_ONESHOT | IRQF_TRIGGER_LOW,
     dev_name(&client->dev), chip);
 if (err < 0) {
  tcpci_unregister_port(chip->tcpci);
  return err;
 }

 return 0;
}
