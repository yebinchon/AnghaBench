
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {void* driver_data; scalar_t__ regmap; TYPE_1__* dev; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_7__ {scalar_t__ volt_table; int name; } ;
typedef struct cpcap_regulator {TYPE_3__ rdesc; } const cpcap_regulator ;
struct cpcap_ddata {struct cpcap_regulator const* soc; scalar_t__ reg; TYPE_1__* dev; } ;
typedef int config ;


 int CPCAP_NR_REGULATORS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 scalar_t__ dev_get_regmap (int ,int *) ;
 struct cpcap_ddata* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,TYPE_3__*,struct regulator_config*) ;
 int memset (struct regulator_config*,int ,int) ;
 struct cpcap_regulator const* of_device_get_match_data (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct cpcap_ddata*) ;
 scalar_t__ unknown_val_tbl ;

__attribute__((used)) static int cpcap_regulator_probe(struct platform_device *pdev)
{
 struct cpcap_ddata *ddata;
 const struct cpcap_regulator *match_data;
 struct regulator_config config;
 int i;

 match_data = of_device_get_match_data(&pdev->dev);
 if (!match_data) {
  dev_err(&pdev->dev, "no configuration data found\n");

  return -ENODEV;
 }

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 ddata->reg = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!ddata->reg)
  return -ENODEV;

 ddata->dev = &pdev->dev;
 ddata->soc = match_data;
 platform_set_drvdata(pdev, ddata);

 memset(&config, 0, sizeof(config));
 config.dev = &pdev->dev;
 config.regmap = ddata->reg;

 for (i = 0; i < CPCAP_NR_REGULATORS; i++) {
  const struct cpcap_regulator *regulator = &ddata->soc[i];
  struct regulator_dev *rdev;

  if (!regulator->rdesc.name)
   break;

  if (regulator->rdesc.volt_table == unknown_val_tbl)
   continue;

  config.driver_data = (void *)regulator;
  rdev = devm_regulator_register(&pdev->dev,
            &regulator->rdesc,
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register regulator %s\n",
    regulator->rdesc.name);

   return PTR_ERR(rdev);
  }
 }

 return 0;
}
