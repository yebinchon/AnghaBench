
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ max_uV; scalar_t__ min_uV; scalar_t__ apply_uV; } ;
struct regulator_init_data {TYPE_1__ constraints; } ;
struct regulator_dev {int dummy; } ;
struct regulator_desc {int continuous_voltage_range; int * ops; int owner; int type; int name; } ;
struct regulator_config {int of_node; struct regulator_init_data* init_data; TYPE_2__* dev; struct regulator_dev* regmap; } ;
typedef struct regulator_dev regmap ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_name (TYPE_2__*) ;
 struct regulator_desc* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct regulator_dev* devm_regmap_init_vexpress_config (TYPE_2__*) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,struct regulator_desc*,struct regulator_config*) ;
 struct regulator_init_data* of_get_regulator_init_data (TYPE_2__*,int ,struct regulator_desc*) ;
 int vexpress_regulator_ops ;
 int vexpress_regulator_ops_ro ;

__attribute__((used)) static int vexpress_regulator_probe(struct platform_device *pdev)
{
 struct regulator_desc *desc;
 struct regulator_init_data *init_data;
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 struct regmap *regmap;

 desc = devm_kzalloc(&pdev->dev, sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return -ENOMEM;

 regmap = devm_regmap_init_vexpress_config(&pdev->dev);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 desc->name = dev_name(&pdev->dev);
 desc->type = REGULATOR_VOLTAGE;
 desc->owner = THIS_MODULE;
 desc->continuous_voltage_range = 1;

 init_data = of_get_regulator_init_data(&pdev->dev, pdev->dev.of_node,
            desc);
 if (!init_data)
  return -EINVAL;

 init_data->constraints.apply_uV = 0;
 if (init_data->constraints.min_uV && init_data->constraints.max_uV)
  desc->ops = &vexpress_regulator_ops;
 else
  desc->ops = &vexpress_regulator_ops_ro;

 config.regmap = regmap;
 config.dev = &pdev->dev;
 config.init_data = init_data;
 config.of_node = pdev->dev.of_node;

 rdev = devm_regulator_register(&pdev->dev, desc, &config);
 if (IS_ERR(rdev))
  return PTR_ERR(rdev);

 return 0;
}
