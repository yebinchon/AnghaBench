
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int id; int name; } ;
struct twlreg_info {int remap; TYPE_2__ desc; } ;
struct regulation_constraints {int valid_modes_mask; int valid_ops_mask; int always_on; } ;
struct regulator_init_data {struct regulation_constraints constraints; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int of_node; struct twlreg_info* driver_data; struct regulator_init_data* init_data; TYPE_1__* dev; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_CHANGE_MODE ;
 int REGULATOR_CHANGE_STATUS ;
 int REGULATOR_CHANGE_VOLTAGE ;
 int REGULATOR_MODE_NORMAL ;
 int REGULATOR_MODE_STANDBY ;







 int TWL_MODULE_PM_RECEIVER ;
 int VREG_REMAP ;
 int dev_err (TYPE_1__*,char*,int ,int) ;
 struct twlreg_info* devm_kmemdup (TYPE_1__*,struct twlreg_info const*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,TYPE_2__*,struct regulator_config*) ;
 struct twlreg_info* of_device_get_match_data (TYPE_1__*) ;
 struct regulator_init_data* of_get_regulator_init_data (TYPE_1__*,int ,TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct regulator_dev*) ;
 int twlreg_write (struct twlreg_info*,int ,int ,int ) ;

__attribute__((used)) static int twlreg_probe(struct platform_device *pdev)
{
 int id;
 struct twlreg_info *info;
 const struct twlreg_info *template;
 struct regulator_init_data *initdata;
 struct regulation_constraints *c;
 struct regulator_dev *rdev;
 struct regulator_config config = { };

 template = of_device_get_match_data(&pdev->dev);
 if (!template)
  return -ENODEV;

 id = template->desc.id;
 initdata = of_get_regulator_init_data(&pdev->dev, pdev->dev.of_node,
      &template->desc);
 if (!initdata)
  return -EINVAL;

 info = devm_kmemdup(&pdev->dev, template, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;




 c = &initdata->constraints;
 c->valid_modes_mask &= REGULATOR_MODE_NORMAL | REGULATOR_MODE_STANDBY;
 c->valid_ops_mask &= REGULATOR_CHANGE_VOLTAGE
    | REGULATOR_CHANGE_MODE
    | REGULATOR_CHANGE_STATUS;
 switch (id) {
 case 129:
 case 134:
 case 133:
 case 128:
 case 132:
 case 131:
 case 130:
  c->always_on = 1;
  break;
 default:
  break;
 }

 config.dev = &pdev->dev;
 config.init_data = initdata;
 config.driver_data = info;
 config.of_node = pdev->dev.of_node;

 rdev = devm_regulator_register(&pdev->dev, &info->desc, &config);
 if (IS_ERR(rdev)) {
  dev_err(&pdev->dev, "can't register %s, %ld\n",
    info->desc.name, PTR_ERR(rdev));
  return PTR_ERR(rdev);
 }
 platform_set_drvdata(pdev, rdev);

 twlreg_write(info, TWL_MODULE_PM_RECEIVER, VREG_REMAP, info->remap);
 return 0;
}
