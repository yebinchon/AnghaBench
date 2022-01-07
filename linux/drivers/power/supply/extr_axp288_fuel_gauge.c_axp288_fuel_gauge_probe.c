
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct power_supply_config {struct axp288_fg_info* drv_data; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct axp288_fg_info {int max_volt; int * iio_channel; int bat; int lock; int status; int regmap_irqc; int regmap; struct platform_device* pdev; } ;
struct axp20x_dev {int regmap_irqc; int regmap; } ;


 int AXP20X_CC_CTRL ;
 int AXP20X_CHRG_CTRL1 ;
 int AXP288_FG_DES_CAP1_REG ;
 int CHRG_CCCV_CV_BIT_POS ;
 int CHRG_CCCV_CV_MASK ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int FG_DES_CAP1_VALID ;
 int GFP_KERNEL ;
 int IIO_CHANNEL_NUM ;
 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;

 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int PTR_ERR (int ) ;

 int axp288_fuel_gauge_blacklist ;
 int dev_dbg (TYPE_1__*,char*,char const* const,int) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct axp20x_dev* dev_get_drvdata (int ) ;
 struct axp288_fg_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ dmi_check_system (int ) ;
 int fuel_gauge_create_debugfs (struct axp288_fg_info*) ;
 int fuel_gauge_desc ;
 int fuel_gauge_init_irq (struct axp288_fg_info*) ;
 int fuel_gauge_reg_readb (struct axp288_fg_info*,int ) ;
 int iio_channel_get (int *,char const* const) ;
 int iio_channel_release (int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct axp288_fg_info*) ;
 int power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int axp288_fuel_gauge_probe(struct platform_device *pdev)
{
 int i, ret = 0;
 struct axp288_fg_info *info;
 struct axp20x_dev *axp20x = dev_get_drvdata(pdev->dev.parent);
 struct power_supply_config psy_cfg = {};
 static const char * const iio_chan_name[] = {
  [135] = "axp288-batt-temp",
  [129] = "axp288-pmic-temp",
  [128] = "axp288-system-temp",
  [137] = "axp288-chrg-curr",
  [136] = "axp288-chrg-d-curr",
  [134] = "axp288-batt-volt",
 };
 unsigned int val;

 if (dmi_check_system(axp288_fuel_gauge_blacklist))
  return -ENODEV;





 ret = regmap_read(axp20x->regmap, AXP20X_CC_CTRL, &val);
 if (ret < 0)
  return ret;
 if (val == 0)
  return -ENODEV;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->pdev = pdev;
 info->regmap = axp20x->regmap;
 info->regmap_irqc = axp20x->regmap_irqc;
 info->status = POWER_SUPPLY_STATUS_UNKNOWN;

 platform_set_drvdata(pdev, info);

 mutex_init(&info->lock);

 for (i = 0; i < IIO_CHANNEL_NUM; i++) {





  info->iio_channel[i] =
   iio_channel_get(((void*)0), iio_chan_name[i]);
  if (IS_ERR(info->iio_channel[i])) {
   ret = PTR_ERR(info->iio_channel[i]);
   dev_dbg(&pdev->dev, "error getting iiochan %s: %d\n",
    iio_chan_name[i], ret);

   if (ret == -ENODEV)
    ret = -EPROBE_DEFER;

   goto out_free_iio_chan;
  }
 }

 ret = fuel_gauge_reg_readb(info, AXP288_FG_DES_CAP1_REG);
 if (ret < 0)
  goto out_free_iio_chan;

 if (!(ret & FG_DES_CAP1_VALID)) {
  dev_err(&pdev->dev, "axp288 not configured by firmware\n");
  ret = -ENODEV;
  goto out_free_iio_chan;
 }

 ret = fuel_gauge_reg_readb(info, AXP20X_CHRG_CTRL1);
 if (ret < 0)
  goto out_free_iio_chan;
 switch ((ret & CHRG_CCCV_CV_MASK) >> CHRG_CCCV_CV_BIT_POS) {
 case 133:
  info->max_volt = 4100;
  break;
 case 132:
  info->max_volt = 4150;
  break;
 case 131:
  info->max_volt = 4200;
  break;
 case 130:
  info->max_volt = 4350;
  break;
 }

 psy_cfg.drv_data = info;
 info->bat = power_supply_register(&pdev->dev, &fuel_gauge_desc, &psy_cfg);
 if (IS_ERR(info->bat)) {
  ret = PTR_ERR(info->bat);
  dev_err(&pdev->dev, "failed to register battery: %d\n", ret);
  goto out_free_iio_chan;
 }

 fuel_gauge_create_debugfs(info);
 fuel_gauge_init_irq(info);

 return 0;

out_free_iio_chan:
 for (i = 0; i < IIO_CHANNEL_NUM; i++)
  if (!IS_ERR_OR_NULL(info->iio_channel[i]))
   iio_channel_release(info->iio_channel[i]);

 return ret;
}
