
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct power_supply_config {struct goldfish_battery_data* drv_data; } ;
struct platform_device {int dev; int name; } ;
struct goldfish_battery_data {scalar_t__ irq; void* battery; void* ac; int * reg_base; int lock; } ;


 int BATTERY_INT_ENABLE ;
 int BATTERY_INT_MASK ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GOLDFISH_BATTERY_WRITE (struct goldfish_battery_data*,int ,int ) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int ac_desc ;
 int battery_desc ;
 int dev_err (int *,char*) ;
 int * devm_ioremap (int *,int ,int ) ;
 struct goldfish_battery_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,int ,struct goldfish_battery_data*) ;
 int goldfish_battery_interrupt ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct goldfish_battery_data*) ;
 void* power_supply_register (int *,int *,struct power_supply_config*) ;
 int power_supply_unregister (void*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int goldfish_battery_probe(struct platform_device *pdev)
{
 int ret;
 struct resource *r;
 struct goldfish_battery_data *data;
 struct power_supply_config psy_cfg = {};

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&data->lock);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (r == ((void*)0)) {
  dev_err(&pdev->dev, "platform_get_resource failed\n");
  return -ENODEV;
 }

 data->reg_base = devm_ioremap(&pdev->dev, r->start, resource_size(r));
 if (data->reg_base == ((void*)0)) {
  dev_err(&pdev->dev, "unable to remap MMIO\n");
  return -ENOMEM;
 }

 data->irq = platform_get_irq(pdev, 0);
 if (data->irq < 0) {
  dev_err(&pdev->dev, "platform_get_irq failed\n");
  return -ENODEV;
 }

 ret = devm_request_irq(&pdev->dev, data->irq,
          goldfish_battery_interrupt,
          IRQF_SHARED, pdev->name, data);
 if (ret)
  return ret;

 psy_cfg.drv_data = data;

 data->ac = power_supply_register(&pdev->dev, &ac_desc, &psy_cfg);
 if (IS_ERR(data->ac))
  return PTR_ERR(data->ac);

 data->battery = power_supply_register(&pdev->dev, &battery_desc,
      &psy_cfg);
 if (IS_ERR(data->battery)) {
  power_supply_unregister(data->ac);
  return PTR_ERR(data->battery);
 }

 platform_set_drvdata(pdev, data);

 GOLDFISH_BATTERY_WRITE(data, BATTERY_INT_ENABLE, BATTERY_INT_MASK);
 return 0;
}
