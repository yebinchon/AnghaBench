
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; TYPE_1__* driver_data; TYPE_2__* dev; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mt6397_chip {int regmap; } ;
struct TYPE_8__ {int name; int volt_table; } ;
struct TYPE_6__ {TYPE_3__ desc; } ;


 int EIO ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int MT6397_CID ;
 size_t MT6397_ID_VGP2 ;
 int MT6397_MAX_REGULATOR ;

 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct mt6397_chip* dev_get_drvdata (int ) ;
 int dev_info (TYPE_2__*,char*,int) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,TYPE_3__*,struct regulator_config*) ;
 int ldo_volt_table5_v2 ;
 TYPE_1__* mt6397_regulators ;
 scalar_t__ mt6397_set_buck_vosel_reg (struct platform_device*) ;
 scalar_t__ regmap_read (int ,int ,int*) ;

__attribute__((used)) static int mt6397_regulator_probe(struct platform_device *pdev)
{
 struct mt6397_chip *mt6397 = dev_get_drvdata(pdev->dev.parent);
 struct regulator_config config = {};
 struct regulator_dev *rdev;
 int i;
 u32 reg_value, version;


 if (mt6397_set_buck_vosel_reg(pdev))
  return -EIO;


 if (regmap_read(mt6397->regmap, MT6397_CID, &reg_value) < 0) {
  dev_err(&pdev->dev, "Failed to read Chip ID\n");
  return -EIO;
 }
 dev_info(&pdev->dev, "Chip ID = 0x%x\n", reg_value);

 version = (reg_value & 0xFF);
 switch (version) {
 case 128:
  mt6397_regulators[MT6397_ID_VGP2].desc.volt_table =
  ldo_volt_table5_v2;
  break;
 default:
  break;
 }

 for (i = 0; i < MT6397_MAX_REGULATOR; i++) {
  config.dev = &pdev->dev;
  config.driver_data = &mt6397_regulators[i];
  config.regmap = mt6397->regmap;
  rdev = devm_regulator_register(&pdev->dev,
    &mt6397_regulators[i].desc, &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register %s\n",
    mt6397_regulators[i].desc.name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
