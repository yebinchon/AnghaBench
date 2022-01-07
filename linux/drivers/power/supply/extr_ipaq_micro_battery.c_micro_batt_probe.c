
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct micro_battery {int wq; int update; int micro; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dev_get_drvdata (int ) ;
 int dev_info (TYPE_1__*,char*) ;
 struct micro_battery* devm_kzalloc (TYPE_1__*,int,int ) ;
 int micro_ac_power ;
 int micro_ac_power_desc ;
 int micro_batt_power ;
 int micro_batt_power_desc ;
 int micro_battery_work ;
 int platform_set_drvdata (struct platform_device*,struct micro_battery*) ;
 int power_supply_register (TYPE_1__*,int *,int *) ;
 int power_supply_unregister (int ) ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static int micro_batt_probe(struct platform_device *pdev)
{
 struct micro_battery *mb;
 int ret;

 mb = devm_kzalloc(&pdev->dev, sizeof(*mb), GFP_KERNEL);
 if (!mb)
  return -ENOMEM;

 mb->micro = dev_get_drvdata(pdev->dev.parent);
 mb->wq = alloc_workqueue("ipaq-battery-wq", WQ_MEM_RECLAIM, 0);
 if (!mb->wq)
  return -ENOMEM;

 INIT_DELAYED_WORK(&mb->update, micro_battery_work);
 platform_set_drvdata(pdev, mb);
 queue_delayed_work(mb->wq, &mb->update, 1);

 micro_batt_power = power_supply_register(&pdev->dev,
       &micro_batt_power_desc, ((void*)0));
 if (IS_ERR(micro_batt_power)) {
  ret = PTR_ERR(micro_batt_power);
  goto batt_err;
 }

 micro_ac_power = power_supply_register(&pdev->dev,
            &micro_ac_power_desc, ((void*)0));
 if (IS_ERR(micro_ac_power)) {
  ret = PTR_ERR(micro_ac_power);
  goto ac_err;
 }

 dev_info(&pdev->dev, "iPAQ micro battery driver\n");
 return 0;

ac_err:
 power_supply_unregister(micro_batt_power);
batt_err:
 cancel_delayed_work_sync(&mb->update);
 destroy_workqueue(mb->wq);
 return ret;
}
