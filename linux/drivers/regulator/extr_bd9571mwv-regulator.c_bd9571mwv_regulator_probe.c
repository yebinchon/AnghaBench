
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; struct bd9571mwv* driver_data; TYPE_1__* dev; } ;
struct TYPE_5__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct bd9571mwv_reg {unsigned int bkup_mode_cnt_keepon; void* rstbmode_pulse; void* bkup_mode_enabled; void* rstbmode_level; struct bd9571mwv* bd; } ;
struct bd9571mwv {TYPE_4__* dev; int regmap; } ;
struct TYPE_6__ {int of_node; } ;


 int ARRAY_SIZE (int *) ;
 unsigned int BD9571MWV_BKUP_MODE_CNT_KEEPON_MASK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_attr_backup_mode ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct bd9571mwv* dev_get_drvdata (int ) ;
 int device_create_file (TYPE_1__*,int *) ;
 struct bd9571mwv_reg* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,int *,struct regulator_config*) ;
 void* of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,unsigned int*) ;
 int platform_set_drvdata (struct platform_device*,struct bd9571mwv_reg*) ;
 int * regulators ;

__attribute__((used)) static int bd9571mwv_regulator_probe(struct platform_device *pdev)
{
 struct bd9571mwv *bd = dev_get_drvdata(pdev->dev.parent);
 struct regulator_config config = { };
 struct bd9571mwv_reg *bdreg;
 struct regulator_dev *rdev;
 unsigned int val;
 int i;

 bdreg = devm_kzalloc(&pdev->dev, sizeof(*bdreg), GFP_KERNEL);
 if (!bdreg)
  return -ENOMEM;

 bdreg->bd = bd;

 platform_set_drvdata(pdev, bdreg);

 config.dev = &pdev->dev;
 config.dev->of_node = bd->dev->of_node;
 config.driver_data = bd;
 config.regmap = bd->regmap;

 for (i = 0; i < ARRAY_SIZE(regulators); i++) {
  rdev = devm_regulator_register(&pdev->dev, &regulators[i],
            &config);
  if (IS_ERR(rdev)) {
   dev_err(bd->dev, "failed to register %s regulator\n",
    pdev->name);
   return PTR_ERR(rdev);
  }
 }

 val = 0;
 of_property_read_u32(bd->dev->of_node, "rohm,ddr-backup-power", &val);
 if (val & ~BD9571MWV_BKUP_MODE_CNT_KEEPON_MASK) {
  dev_err(bd->dev, "invalid %s mode %u\n",
   "rohm,ddr-backup-power", val);
  return -EINVAL;
 }
 bdreg->bkup_mode_cnt_keepon = val;

 bdreg->rstbmode_level = of_property_read_bool(bd->dev->of_node,
            "rohm,rstbmode-level");
 bdreg->rstbmode_pulse = of_property_read_bool(bd->dev->of_node,
            "rohm,rstbmode-pulse");
 if (bdreg->rstbmode_level && bdreg->rstbmode_pulse) {
  dev_err(bd->dev, "only one rohm,rstbmode-* may be specified");
  return -EINVAL;
 }
 return 0;
}
