
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pm860x_power_pdata {int max_capacity; int resistor; } ;
struct pm860x_chip {scalar_t__ id; int dev; int companion; int client; } ;
struct pm860x_battery_info {scalar_t__ irq_cc; scalar_t__ irq_batt; int max_capacity; int resistor; TYPE_2__* battery; int lock; int status; TYPE_3__* dev; int i2c; struct pm860x_chip* chip; } ;
struct TYPE_10__ {struct pm860x_power_pdata* platform_data; int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;


 scalar_t__ CHIP_PM8607 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int PTR_ERR (TYPE_2__*) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct pm860x_chip* dev_get_drvdata (int ) ;
 struct pm860x_battery_info* devm_kzalloc (TYPE_3__*,int,int ) ;
 TYPE_2__* devm_power_supply_register (TYPE_3__*,int *,int *) ;
 int devm_request_threaded_irq (int ,scalar_t__,int *,int ,int ,char*,struct pm860x_battery_info*) ;
 int mutex_init (int *) ;
 void* platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct pm860x_battery_info*) ;
 int pm860x_batt_handler ;
 int pm860x_battery_desc ;
 int pm860x_coulomb_handler ;
 int pm860x_init_battery (struct pm860x_battery_info*) ;

__attribute__((used)) static int pm860x_battery_probe(struct platform_device *pdev)
{
 struct pm860x_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct pm860x_battery_info *info;
 struct pm860x_power_pdata *pdata;
 int ret;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->irq_cc = platform_get_irq(pdev, 0);
 if (info->irq_cc <= 0) {
  dev_err(&pdev->dev, "No IRQ resource!\n");
  return -EINVAL;
 }

 info->irq_batt = platform_get_irq(pdev, 1);
 if (info->irq_batt <= 0) {
  dev_err(&pdev->dev, "No IRQ resource!\n");
  return -EINVAL;
 }

 info->chip = chip;
 info->i2c =
     (chip->id == CHIP_PM8607) ? chip->client : chip->companion;
 info->dev = &pdev->dev;
 info->status = POWER_SUPPLY_STATUS_UNKNOWN;
 pdata = pdev->dev.platform_data;

 mutex_init(&info->lock);
 platform_set_drvdata(pdev, info);

 pm860x_init_battery(info);

 if (pdata && pdata->max_capacity)
  info->max_capacity = pdata->max_capacity;
 else
  info->max_capacity = 1500;
 if (pdata && pdata->resistor)
  info->resistor = pdata->resistor;
 else
  info->resistor = 300;

 info->battery = devm_power_supply_register(&pdev->dev,
         &pm860x_battery_desc,
         ((void*)0));
 if (IS_ERR(info->battery))
  return PTR_ERR(info->battery);
 info->battery->dev.parent = &pdev->dev;

 ret = devm_request_threaded_irq(chip->dev, info->irq_cc, ((void*)0),
     pm860x_coulomb_handler, IRQF_ONESHOT,
     "coulomb", info);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to request IRQ: #%d: %d\n",
   info->irq_cc, ret);
  return ret;
 }

 ret = devm_request_threaded_irq(chip->dev, info->irq_batt, ((void*)0),
     pm860x_batt_handler,
     IRQF_ONESHOT, "battery", info);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to request IRQ: #%d: %d\n",
   info->irq_batt, ret);
  return ret;
 }


 return 0;
}
