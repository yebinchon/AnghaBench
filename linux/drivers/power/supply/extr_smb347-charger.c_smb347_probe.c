
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger_platform_data {scalar_t__ irq_gpio; scalar_t__ use_mains; scalar_t__ use_usb; } ;
struct smb347_charger {void* battery; void* mains; struct smb347_charger_platform_data const* pdata; void* usb; void* regmap; struct device* dev; int lock; } ;
struct power_supply_config {char** supplied_to; struct smb347_charger* drv_data; int num_supplicants; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct smb347_charger_platform_data* platform_data; } ;
struct i2c_client {struct device dev; } ;


 int ARRAY_SIZE (char**) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_warn (struct device*,char*,...) ;
 struct smb347_charger* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct smb347_charger*) ;
 int mutex_init (int *) ;
 void* power_supply_register (struct device*,int *,struct power_supply_config*) ;
 int power_supply_unregister (void*) ;
 int smb347_battery_desc ;
 int smb347_hw_init (struct smb347_charger*) ;
 int smb347_irq_enable (struct smb347_charger*) ;
 int smb347_irq_init (struct smb347_charger*,struct i2c_client*) ;
 int smb347_mains_desc ;
 int smb347_regmap ;
 int smb347_usb_desc ;

__attribute__((used)) static int smb347_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 static char *battery[] = { "smb347-battery" };
 const struct smb347_charger_platform_data *pdata;
 struct power_supply_config mains_usb_cfg = {}, battery_cfg = {};
 struct device *dev = &client->dev;
 struct smb347_charger *smb;
 int ret;

 pdata = dev->platform_data;
 if (!pdata)
  return -EINVAL;

 if (!pdata->use_mains && !pdata->use_usb)
  return -EINVAL;

 smb = devm_kzalloc(dev, sizeof(*smb), GFP_KERNEL);
 if (!smb)
  return -ENOMEM;

 i2c_set_clientdata(client, smb);

 mutex_init(&smb->lock);
 smb->dev = &client->dev;
 smb->pdata = pdata;

 smb->regmap = devm_regmap_init_i2c(client, &smb347_regmap);
 if (IS_ERR(smb->regmap))
  return PTR_ERR(smb->regmap);

 ret = smb347_hw_init(smb);
 if (ret < 0)
  return ret;

 mains_usb_cfg.supplied_to = battery;
 mains_usb_cfg.num_supplicants = ARRAY_SIZE(battery);
 mains_usb_cfg.drv_data = smb;
 if (smb->pdata->use_mains) {
  smb->mains = power_supply_register(dev, &smb347_mains_desc,
         &mains_usb_cfg);
  if (IS_ERR(smb->mains))
   return PTR_ERR(smb->mains);
 }

 if (smb->pdata->use_usb) {
  smb->usb = power_supply_register(dev, &smb347_usb_desc,
       &mains_usb_cfg);
  if (IS_ERR(smb->usb)) {
   if (smb->pdata->use_mains)
    power_supply_unregister(smb->mains);
   return PTR_ERR(smb->usb);
  }
 }

 battery_cfg.drv_data = smb;
 smb->battery = power_supply_register(dev, &smb347_battery_desc,
          &battery_cfg);
 if (IS_ERR(smb->battery)) {
  if (smb->pdata->use_usb)
   power_supply_unregister(smb->usb);
  if (smb->pdata->use_mains)
   power_supply_unregister(smb->mains);
  return PTR_ERR(smb->battery);
 }





 if (pdata->irq_gpio >= 0) {
  ret = smb347_irq_init(smb, client);
  if (ret < 0) {
   dev_warn(dev, "failed to initialize IRQ: %d\n", ret);
   dev_warn(dev, "disabling IRQ support\n");
  } else {
   smb347_irq_enable(smb);
  }
 }

 return 0;
}
