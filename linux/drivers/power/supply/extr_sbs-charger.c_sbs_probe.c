
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sbs_info {int last_state; int work; int power_supply; int regmap; struct i2c_client* client; } ;
struct power_supply_config {struct sbs_info* drv_data; int of_node; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {int of_node; } ;
struct i2c_client {int name; TYPE_1__ dev; scalar_t__ irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SBS_CHARGER_POLL_TIME ;
 int SBS_CHARGER_REG_STATUS ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int dev_name (TYPE_1__*) ;
 struct sbs_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (TYPE_1__*,scalar_t__,int *,int ,int,int ,struct sbs_info*) ;
 int i2c_set_clientdata (struct i2c_client*,struct sbs_info*) ;
 int msecs_to_jiffies (int ) ;
 int regmap_read (int ,int ,int*) ;
 int sbs_delayed_work ;
 int sbs_desc ;
 int sbs_irq_thread ;
 int sbs_regmap ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int sbs_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct power_supply_config psy_cfg = {};
 struct sbs_info *chip;
 int ret, val;

 chip = devm_kzalloc(&client->dev, sizeof(struct sbs_info), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->client = client;
 psy_cfg.of_node = client->dev.of_node;
 psy_cfg.drv_data = chip;

 i2c_set_clientdata(client, chip);

 chip->regmap = devm_regmap_init_i2c(client, &sbs_regmap);
 if (IS_ERR(chip->regmap))
  return PTR_ERR(chip->regmap);





 ret = regmap_read(chip->regmap, SBS_CHARGER_REG_STATUS, &val);
 if (ret) {
  dev_err(&client->dev, "Failed to get device status\n");
  return ret;
 }
 chip->last_state = val;

 chip->power_supply = devm_power_supply_register(&client->dev, &sbs_desc,
       &psy_cfg);
 if (IS_ERR(chip->power_supply)) {
  dev_err(&client->dev, "Failed to register power supply\n");
  return PTR_ERR(chip->power_supply);
 }






 if (client->irq) {
  ret = devm_request_threaded_irq(&client->dev, client->irq,
     ((void*)0), sbs_irq_thread,
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     dev_name(&client->dev), chip);
  if (ret) {
   dev_err(&client->dev, "Failed to request irq, %d\n", ret);
   return ret;
  }
 } else {
  INIT_DELAYED_WORK(&chip->work, sbs_delayed_work);
  schedule_delayed_work(&chip->work,
          msecs_to_jiffies(SBS_CHARGER_POLL_TIME));
 }

 dev_info(&client->dev,
   "%s: smart charger device registered\n", client->name);

 return 0;
}
