
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct power_supply_desc {int dummy; } ;
struct power_supply_config {int num_supplicants; int supplied_to; } ;
struct power_supply {int dummy; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct TYPE_6__ {int notifier_call; } ;
struct nvec_power {TYPE_2__ notifier; int poller; struct nvec_chip* nvec; } ;
struct nvec_chip {int dummy; } ;



 int ARRAY_SIZE (int ) ;

 int ENODEV ;
 int ENOMEM ;
 int GFP_NOWAIT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int NVEC_SYS ;
 int PTR_ERR_OR_ZERO (struct power_supply*) ;
 struct nvec_chip* dev_get_drvdata (int ) ;
 int dev_set_drvdata (TYPE_1__*,struct nvec_power*) ;
 struct nvec_power* devm_kzalloc (TYPE_1__*,int,int ) ;
 int get_bat_mfg_data (struct nvec_power*) ;
 int msecs_to_jiffies (int) ;
 struct power_supply* nvec_bat_psy ;
 struct power_supply_desc nvec_bat_psy_desc ;
 int nvec_power_bat_notifier ;
 int nvec_power_notifier ;
 int nvec_power_poll ;
 int nvec_power_supplied_to ;
 struct power_supply* nvec_psy ;
 struct power_supply_desc nvec_psy_desc ;
 int nvec_register_notifier (struct nvec_chip*,TYPE_2__*,int ) ;
 struct power_supply* power_supply_register (TYPE_1__*,struct power_supply_desc const*,struct power_supply_config*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int nvec_power_probe(struct platform_device *pdev)
{
 struct power_supply **psy;
 const struct power_supply_desc *psy_desc;
 struct nvec_power *power;
 struct nvec_chip *nvec = dev_get_drvdata(pdev->dev.parent);
 struct power_supply_config psy_cfg = {};

 power = devm_kzalloc(&pdev->dev, sizeof(struct nvec_power), GFP_NOWAIT);
 if (!power)
  return -ENOMEM;

 dev_set_drvdata(&pdev->dev, power);
 power->nvec = nvec;

 switch (pdev->id) {
 case 129:
  psy = &nvec_psy;
  psy_desc = &nvec_psy_desc;
  psy_cfg.supplied_to = nvec_power_supplied_to;
  psy_cfg.num_supplicants = ARRAY_SIZE(nvec_power_supplied_to);

  power->notifier.notifier_call = nvec_power_notifier;

  INIT_DELAYED_WORK(&power->poller, nvec_power_poll);
  schedule_delayed_work(&power->poller, msecs_to_jiffies(5000));
  break;
 case 128:
  psy = &nvec_bat_psy;
  psy_desc = &nvec_bat_psy_desc;

  power->notifier.notifier_call = nvec_power_bat_notifier;
  break;
 default:
  return -ENODEV;
 }

 nvec_register_notifier(nvec, &power->notifier, NVEC_SYS);

 if (pdev->id == 128)
  get_bat_mfg_data(power);

 *psy = power_supply_register(&pdev->dev, psy_desc, &psy_cfg);

 return PTR_ERR_OR_ZERO(*psy);
}
