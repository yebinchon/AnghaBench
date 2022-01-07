
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct da9150_fg_pdata* platform_data; scalar_t__ of_node; int parent; } ;
struct platform_device {struct device dev; } ;
struct da9150_fg_pdata {int warn_soc_lvl; int crit_soc_lvl; scalar_t__ update_interval; } ;
struct da9150_fg {int warn_soc; int crit_soc; int work; scalar_t__ interval; int battery; int io_lock; struct device* dev; struct da9150* da9150; } ;
struct da9150 {int dummy; } ;


 int DA9150_CORE2WIRE_CTRL_A ;
 int DA9150_FG_QIF_EN_MASK ;
 int DA9150_QIF_FW_MAIN_VER ;
 int DA9150_QIF_FW_MAIN_VER_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cancel_delayed_work (int *) ;
 struct da9150_fg_pdata* da9150_fg_dt_pdata (struct device*) ;
 int da9150_fg_irq ;
 int da9150_fg_read_attr (struct da9150_fg*,int ,int ) ;
 int da9150_fg_soc_event_config (struct da9150_fg*) ;
 int da9150_fg_work ;
 int da9150_set_bits (struct da9150*,int ,int ,int ) ;
 int dev_err (struct device*,char*,int,...) ;
 struct da9150* dev_get_drvdata (int ) ;
 struct da9150_fg_pdata* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 struct da9150_fg* devm_kzalloc (struct device*,int,int ) ;
 int devm_power_supply_register (struct device*,int *,int *) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,char*,struct da9150_fg*) ;
 int fg_desc ;
 int msecs_to_jiffies (scalar_t__) ;
 int mutex_init (int *) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9150_fg*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int da9150_fg_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct da9150 *da9150 = dev_get_drvdata(dev->parent);
 struct da9150_fg_pdata *fg_pdata = dev_get_platdata(dev);
 struct da9150_fg *fg;
 int ver, irq, ret = 0;

 fg = devm_kzalloc(dev, sizeof(*fg), GFP_KERNEL);
 if (fg == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, fg);
 fg->da9150 = da9150;
 fg->dev = dev;

 mutex_init(&fg->io_lock);


 da9150_set_bits(da9150, DA9150_CORE2WIRE_CTRL_A, DA9150_FG_QIF_EN_MASK,
   DA9150_FG_QIF_EN_MASK);

 fg->battery = devm_power_supply_register(dev, &fg_desc, ((void*)0));
 if (IS_ERR(fg->battery)) {
  ret = PTR_ERR(fg->battery);
  return ret;
 }

 ver = da9150_fg_read_attr(fg, DA9150_QIF_FW_MAIN_VER,
      DA9150_QIF_FW_MAIN_VER_SIZE);
 dev_info(dev, "Version: 0x%x\n", ver);


 if (dev->of_node) {
  fg_pdata = da9150_fg_dt_pdata(dev);
  dev->platform_data = fg_pdata;
 }


 if (fg_pdata) {
  fg->interval = fg_pdata->update_interval;

  if (fg_pdata->warn_soc_lvl > 100)
   dev_warn(dev, "Invalid SOC warning level provided, Ignoring");
  else
   fg->warn_soc = fg_pdata->warn_soc_lvl;

  if ((fg_pdata->crit_soc_lvl > 100) ||
      (fg_pdata->crit_soc_lvl >= fg_pdata->warn_soc_lvl))
   dev_warn(dev, "Invalid SOC critical level provided, Ignoring");
  else
   fg->crit_soc = fg_pdata->crit_soc_lvl;


 }


 da9150_fg_soc_event_config(fg);





 if (fg->interval) {
  INIT_DELAYED_WORK(&fg->work, da9150_fg_work);
  schedule_delayed_work(&fg->work,
          msecs_to_jiffies(fg->interval));
 }


 irq = platform_get_irq_byname(pdev, "FG");
 if (irq < 0) {
  dev_err(dev, "Failed to get IRQ FG: %d\n", irq);
  ret = irq;
  goto irq_fail;
 }

 ret = devm_request_threaded_irq(dev, irq, ((void*)0), da9150_fg_irq,
     IRQF_ONESHOT, "FG", fg);
 if (ret) {
  dev_err(dev, "Failed to request IRQ %d: %d\n", irq, ret);
  goto irq_fail;
 }

 return 0;

irq_fail:
 if (fg->interval)
  cancel_delayed_work(&fg->work);

 return ret;
}
