
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rpm_regulator_data {scalar_t__ name; int supply; int resource; int template; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct qcom_rpm_reg* driver_data; TYPE_1__* dev; } ;
struct TYPE_7__ {int id; int of_parse_cb; scalar_t__ of_match; int supply_name; scalar_t__ name; int type; int owner; } ;
struct qcom_rpm_reg {TYPE_3__ desc; struct qcom_rpm* rpm; int resource; TYPE_1__* dev; int lock; } ;
struct qcom_rpm {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct rpm_regulator_data* data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct qcom_rpm* dev_get_drvdata (int ) ;
 struct qcom_rpm_reg* devm_kmalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,TYPE_3__*,struct regulator_config*) ;
 int memcpy (struct qcom_rpm_reg*,int ,int) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int rpm_of_match ;
 int rpm_reg_of_parse ;

__attribute__((used)) static int rpm_reg_probe(struct platform_device *pdev)
{
 const struct rpm_regulator_data *reg;
 const struct of_device_id *match;
 struct regulator_config config = { };
 struct regulator_dev *rdev;
 struct qcom_rpm_reg *vreg;
 struct qcom_rpm *rpm;

 rpm = dev_get_drvdata(pdev->dev.parent);
 if (!rpm) {
  dev_err(&pdev->dev, "unable to retrieve handle to rpm\n");
  return -ENODEV;
 }

 match = of_match_device(rpm_of_match, &pdev->dev);
 if (!match) {
  dev_err(&pdev->dev, "failed to match device\n");
  return -ENODEV;
 }

 for (reg = match->data; reg->name; reg++) {
  vreg = devm_kmalloc(&pdev->dev, sizeof(*vreg), GFP_KERNEL);
  if (!vreg)
   return -ENOMEM;

  memcpy(vreg, reg->template, sizeof(*vreg));
  mutex_init(&vreg->lock);

  vreg->dev = &pdev->dev;
  vreg->resource = reg->resource;
  vreg->rpm = rpm;

  vreg->desc.id = -1;
  vreg->desc.owner = THIS_MODULE;
  vreg->desc.type = REGULATOR_VOLTAGE;
  vreg->desc.name = reg->name;
  vreg->desc.supply_name = reg->supply;
  vreg->desc.of_match = reg->name;
  vreg->desc.of_parse_cb = rpm_reg_of_parse;

  config.dev = &pdev->dev;
  config.driver_data = vreg;
  rdev = devm_regulator_register(&pdev->dev, &vreg->desc, &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev, "failed to register %s\n", reg->name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
