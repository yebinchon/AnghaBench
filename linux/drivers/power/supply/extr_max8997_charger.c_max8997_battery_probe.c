
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct power_supply_config {struct charger_data* drv_data; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8997_platform_data {int eoc_mA; int timeout; } ;
struct max8997_dev {int i2c; int dev; } ;
struct charger_data {int battery; struct max8997_dev* iodev; TYPE_1__* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX8997_REG_MBCCTRL1 ;
 int MAX8997_REG_MBCCTRL5 ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct max8997_dev* dev_get_drvdata (int ) ;
 struct max8997_platform_data* dev_get_platdata (int ) ;
 struct charger_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int max8997_battery_desc ;
 int max8997_update_reg (int ,int ,int,int) ;
 int platform_set_drvdata (struct platform_device*,struct charger_data*) ;

__attribute__((used)) static int max8997_battery_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct charger_data *charger;
 struct max8997_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 struct max8997_platform_data *pdata = dev_get_platdata(iodev->dev);
 struct power_supply_config psy_cfg = {};

 if (!pdata)
  return -EINVAL;

 if (pdata->eoc_mA) {
  int val = (pdata->eoc_mA - 50) / 10;
  if (val < 0)
   val = 0;
  if (val > 0xf)
   val = 0xf;

  ret = max8997_update_reg(iodev->i2c,
    MAX8997_REG_MBCCTRL5, val, 0xf);
  if (ret < 0) {
   dev_err(&pdev->dev, "Cannot use i2c bus.\n");
   return ret;
  }
 }

 switch (pdata->timeout) {
 case 5:
  ret = max8997_update_reg(iodev->i2c, MAX8997_REG_MBCCTRL1,
    0x2 << 4, 0x7 << 4);
  break;
 case 6:
  ret = max8997_update_reg(iodev->i2c, MAX8997_REG_MBCCTRL1,
    0x3 << 4, 0x7 << 4);
  break;
 case 7:
  ret = max8997_update_reg(iodev->i2c, MAX8997_REG_MBCCTRL1,
    0x4 << 4, 0x7 << 4);
  break;
 case 0:
  ret = max8997_update_reg(iodev->i2c, MAX8997_REG_MBCCTRL1,
    0x7 << 4, 0x7 << 4);
  break;
 default:
  dev_err(&pdev->dev, "incorrect timeout value (%d)\n",
    pdata->timeout);
  return -EINVAL;
 }
 if (ret < 0) {
  dev_err(&pdev->dev, "Cannot use i2c bus.\n");
  return ret;
 }

 charger = devm_kzalloc(&pdev->dev, sizeof(*charger), GFP_KERNEL);
 if (!charger)
  return -ENOMEM;

 platform_set_drvdata(pdev, charger);


 charger->dev = &pdev->dev;
 charger->iodev = iodev;

 psy_cfg.drv_data = charger;

 charger->battery = devm_power_supply_register(&pdev->dev,
       &max8997_battery_desc,
       &psy_cfg);
 if (IS_ERR(charger->battery)) {
  dev_err(&pdev->dev, "failed: power supply register\n");
  return PTR_ERR(charger->battery);
 }

 return 0;
}
