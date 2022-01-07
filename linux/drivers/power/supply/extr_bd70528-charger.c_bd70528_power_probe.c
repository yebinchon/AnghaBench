
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct power_supply_config {int of_node; struct bd70528_psy* drv_data; } ;
struct TYPE_5__ {TYPE_3__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bd70528_psy {int psy; TYPE_1__* dev; int regmap; } ;
struct TYPE_6__ {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bd70528_charger_desc ;
 int bd70528_get_irqs (struct platform_device*,struct bd70528_psy*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_get_regmap (TYPE_3__*,int *) ;
 struct bd70528_psy* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_power_supply_register (TYPE_1__*,int *,struct power_supply_config*) ;
 int platform_set_drvdata (struct platform_device*,struct bd70528_psy*) ;

__attribute__((used)) static int bd70528_power_probe(struct platform_device *pdev)
{
 struct bd70528_psy *bdpsy;
 struct power_supply_config cfg = {};

 bdpsy = devm_kzalloc(&pdev->dev, sizeof(*bdpsy), GFP_KERNEL);
 if (!bdpsy)
  return -ENOMEM;

 bdpsy->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!bdpsy->regmap) {
  dev_err(&pdev->dev, "No regmap found for chip\n");
  return -EINVAL;
 }
 bdpsy->dev = &pdev->dev;

 platform_set_drvdata(pdev, bdpsy);
 cfg.drv_data = bdpsy;
 cfg.of_node = pdev->dev.parent->of_node;

 bdpsy->psy = devm_power_supply_register(&pdev->dev,
      &bd70528_charger_desc, &cfg);
 if (IS_ERR(bdpsy->psy)) {
  dev_err(&pdev->dev, "failed: power supply register\n");
  return PTR_ERR(bdpsy->psy);
 }

 return bd70528_get_irqs(pdev, bdpsy);
}
