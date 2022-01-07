
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int notifier_call; } ;
struct ltc2952_poweroff {TYPE_1__ panic_notifier; int * dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_notifier_chain_register (int *,TYPE_1__*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct ltc2952_poweroff* devm_kzalloc (int *,int,int ) ;
 struct ltc2952_poweroff* ltc2952_data ;
 int ltc2952_poweroff_init (struct platform_device*) ;
 scalar_t__ ltc2952_poweroff_kill ;
 int ltc2952_poweroff_notify_panic ;
 int panic_notifier_list ;
 int platform_set_drvdata (struct platform_device*,struct ltc2952_poweroff*) ;
 scalar_t__ pm_power_off ;

__attribute__((used)) static int ltc2952_poweroff_probe(struct platform_device *pdev)
{
 int ret;
 struct ltc2952_poweroff *data;

 if (pm_power_off) {
  dev_err(&pdev->dev, "pm_power_off already registered");
  return -EBUSY;
 }

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->dev = &pdev->dev;
 platform_set_drvdata(pdev, data);

 ret = ltc2952_poweroff_init(pdev);
 if (ret)
  return ret;


 ltc2952_data = data;
 pm_power_off = ltc2952_poweroff_kill;

 data->panic_notifier.notifier_call = ltc2952_poweroff_notify_panic;
 atomic_notifier_chain_register(&panic_notifier_list,
           &data->panic_notifier);
 dev_info(&pdev->dev, "probe successful\n");

 return 0;
}
