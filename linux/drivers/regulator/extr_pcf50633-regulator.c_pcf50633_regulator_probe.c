
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; struct pcf50633* driver_data; int init_data; TYPE_2__* dev; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {size_t id; TYPE_2__ dev; } ;
struct pcf50633 {TYPE_1__* pdata; int regmap; } ;
struct TYPE_4__ {int (* regulator_registered ) (struct pcf50633*,size_t) ;} ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_get_platdata (TYPE_2__*) ;
 struct pcf50633* dev_to_pcf50633 (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,int *,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct regulator_dev*) ;
 int * regulators ;
 int stub1 (struct pcf50633*,size_t) ;

__attribute__((used)) static int pcf50633_regulator_probe(struct platform_device *pdev)
{
 struct regulator_dev *rdev;
 struct pcf50633 *pcf;
 struct regulator_config config = { };


 pcf = dev_to_pcf50633(pdev->dev.parent);

 config.dev = &pdev->dev;
 config.init_data = dev_get_platdata(&pdev->dev);
 config.driver_data = pcf;
 config.regmap = pcf->regmap;

 rdev = devm_regulator_register(&pdev->dev, &regulators[pdev->id],
           &config);
 if (IS_ERR(rdev))
  return PTR_ERR(rdev);

 platform_set_drvdata(pdev, rdev);

 if (pcf->pdata->regulator_registered)
  pcf->pdata->regulator_registered(pcf, pdev->id);

 return 0;
}
