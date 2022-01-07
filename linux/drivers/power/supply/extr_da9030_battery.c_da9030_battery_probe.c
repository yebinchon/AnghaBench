
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct power_supply_config {struct da9030_charger* drv_data; } ;
struct TYPE_5__ {int parent; struct da9030_battery_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int notifier_call; } ;
struct da9030_charger {int charge_milliamp; int charge_millivolt; int work; TYPE_3__ nb; int master; int debug_file; int psy; int psy_desc; int interval; int battery_critical; int battery_low; int battery_info; } ;
struct da9030_battery_info {int charge_milliamp; int charge_millivolt; int battery_critical; int battery_low; int battery_info; scalar_t__ batmon_interval; } ;


 int DA9030_EVENT_CHDET ;
 int DA9030_EVENT_CHIOVER ;
 int DA9030_EVENT_TBAT ;
 int DA9030_EVENT_VBATMON ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cancel_delayed_work (int *) ;
 int da9030_bat_create_debugfs (struct da9030_charger*) ;
 int da9030_battery_charger_init (struct da9030_charger*) ;
 int da9030_battery_convert_thresholds (struct da9030_charger*,struct da9030_battery_info*) ;
 int da9030_battery_event ;
 int da9030_battery_setup_psy (struct da9030_charger*) ;
 int da9030_charging_monitor ;
 int da903x_register_notifier (int ,TYPE_3__*,int) ;
 int da903x_unregister_notifier (int ,TYPE_3__*,int) ;
 struct da9030_charger* devm_kzalloc (TYPE_1__*,int,int ) ;
 int msecs_to_jiffies (int) ;
 int platform_set_drvdata (struct platform_device*,struct da9030_charger*) ;
 int power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int da9030_battery_probe(struct platform_device *pdev)
{
 struct da9030_charger *charger;
 struct power_supply_config psy_cfg = {};
 struct da9030_battery_info *pdata = pdev->dev.platform_data;
 int ret;

 if (pdata == ((void*)0))
  return -EINVAL;

 if (pdata->charge_milliamp >= 1500 ||
     pdata->charge_millivolt < 4000 ||
     pdata->charge_millivolt > 4350)
  return -EINVAL;

 charger = devm_kzalloc(&pdev->dev, sizeof(*charger), GFP_KERNEL);
 if (charger == ((void*)0))
  return -ENOMEM;

 charger->master = pdev->dev.parent;



 charger->interval = msecs_to_jiffies(
  (pdata->batmon_interval ? : 10) * 1000);

 charger->charge_milliamp = pdata->charge_milliamp;
 charger->charge_millivolt = pdata->charge_millivolt;
 charger->battery_info = pdata->battery_info;
 charger->battery_low = pdata->battery_low;
 charger->battery_critical = pdata->battery_critical;

 da9030_battery_convert_thresholds(charger, pdata);

 ret = da9030_battery_charger_init(charger);
 if (ret)
  goto err_charger_init;

 INIT_DELAYED_WORK(&charger->work, da9030_charging_monitor);
 schedule_delayed_work(&charger->work, charger->interval);

 charger->nb.notifier_call = da9030_battery_event;
 ret = da903x_register_notifier(charger->master, &charger->nb,
           DA9030_EVENT_CHDET |
           DA9030_EVENT_VBATMON |
           DA9030_EVENT_CHIOVER |
           DA9030_EVENT_TBAT);
 if (ret)
  goto err_notifier;

 da9030_battery_setup_psy(charger);
 psy_cfg.drv_data = charger;
 charger->psy = power_supply_register(&pdev->dev, &charger->psy_desc,
          &psy_cfg);
 if (IS_ERR(charger->psy)) {
  ret = PTR_ERR(charger->psy);
  goto err_ps_register;
 }

 charger->debug_file = da9030_bat_create_debugfs(charger);
 platform_set_drvdata(pdev, charger);
 return 0;

err_ps_register:
 da903x_unregister_notifier(charger->master, &charger->nb,
       DA9030_EVENT_CHDET | DA9030_EVENT_VBATMON |
       DA9030_EVENT_CHIOVER | DA9030_EVENT_TBAT);
err_notifier:
 cancel_delayed_work(&charger->work);

err_charger_init:
 return ret;
}
