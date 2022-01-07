
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ of_node; int parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct da9062_thermal {int irq; TYPE_2__* zone; TYPE_1__* config; int lock; int work; TYPE_4__* dev; int mode; struct da9062* hw; } ;
struct da9062 {int dummy; } ;
struct TYPE_11__ {int passive_delay; } ;
struct TYPE_10__ {int name; } ;


 unsigned int DA9062_DEFAULT_POLLING_MS_PERIOD ;
 unsigned int DA9062_MAX_POLLING_MS_PERIOD ;
 unsigned int DA9062_MIN_POLLING_MS_PERIOD ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int THERMAL_DEVICE_ENABLED ;
 int da9062_compatible_reg_id_table ;
 int da9062_thermal_irq_handler ;
 int da9062_thermal_ops ;
 int da9062_thermal_poll_on ;
 int dev_dbg (TYPE_4__*,char*,int ) ;
 int dev_err (TYPE_4__*,char*) ;
 struct da9062* dev_get_drvdata (int ) ;
 int dev_warn (TYPE_4__*,char*,unsigned int) ;
 struct da9062_thermal* devm_kzalloc (TYPE_4__*,int,int ) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,scalar_t__) ;
 int of_property_read_u32 (scalar_t__,char*,unsigned int*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9062_thermal*) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct da9062_thermal*) ;
 TYPE_2__* thermal_zone_device_register (int ,int,int ,struct da9062_thermal*,int *,int *,unsigned int,int ) ;
 int thermal_zone_device_unregister (TYPE_2__*) ;

__attribute__((used)) static int da9062_thermal_probe(struct platform_device *pdev)
{
 struct da9062 *chip = dev_get_drvdata(pdev->dev.parent);
 struct da9062_thermal *thermal;
 unsigned int pp_tmp = DA9062_DEFAULT_POLLING_MS_PERIOD;
 const struct of_device_id *match;
 int ret = 0;

 match = of_match_node(da9062_compatible_reg_id_table,
         pdev->dev.of_node);
 if (!match)
  return -ENXIO;

 if (pdev->dev.of_node) {
  if (!of_property_read_u32(pdev->dev.of_node,
       "polling-delay-passive",
       &pp_tmp)) {
   if (pp_tmp < DA9062_MIN_POLLING_MS_PERIOD ||
       pp_tmp > DA9062_MAX_POLLING_MS_PERIOD) {
    dev_warn(&pdev->dev,
      "Out-of-range polling period %d ms\n",
      pp_tmp);
    pp_tmp = DA9062_DEFAULT_POLLING_MS_PERIOD;
   }
  }
 }

 thermal = devm_kzalloc(&pdev->dev, sizeof(struct da9062_thermal),
          GFP_KERNEL);
 if (!thermal) {
  ret = -ENOMEM;
  goto err;
 }

 thermal->config = match->data;
 thermal->hw = chip;
 thermal->mode = THERMAL_DEVICE_ENABLED;
 thermal->dev = &pdev->dev;

 INIT_DELAYED_WORK(&thermal->work, da9062_thermal_poll_on);
 mutex_init(&thermal->lock);

 thermal->zone = thermal_zone_device_register(thermal->config->name,
     1, 0, thermal,
     &da9062_thermal_ops, ((void*)0), pp_tmp,
     0);
 if (IS_ERR(thermal->zone)) {
  dev_err(&pdev->dev, "Cannot register thermal zone device\n");
  ret = PTR_ERR(thermal->zone);
  goto err;
 }

 dev_dbg(&pdev->dev,
  "TJUNC temperature polling period set at %d ms\n",
  thermal->zone->passive_delay);

 ret = platform_get_irq_byname(pdev, "THERMAL");
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to get platform IRQ.\n");
  goto err_zone;
 }
 thermal->irq = ret;

 ret = request_threaded_irq(thermal->irq, ((void*)0),
       da9062_thermal_irq_handler,
       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
       "THERMAL", thermal);
 if (ret) {
  dev_err(&pdev->dev,
   "Failed to request thermal device IRQ.\n");
  goto err_zone;
 }

 platform_set_drvdata(pdev, thermal);
 return 0;

err_zone:
 thermal_zone_device_unregister(thermal->zone);
err:
 return ret;
}
