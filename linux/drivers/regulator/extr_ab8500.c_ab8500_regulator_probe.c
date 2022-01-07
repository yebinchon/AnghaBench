
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_regulator_match {int of_node; int init_data; } ;
struct device_node {int dummy; } ;
struct ab8500 {int dummy; } ;
struct TYPE_5__ {int info_size; struct of_regulator_match* match; int match_size; } ;


 int EINVAL ;
 int ab8500_regulator_register (struct platform_device*,int ,int,int ) ;
 int abx500_get_regulator_info (struct ab8500*) ;
 TYPE_3__ abx500_regulator ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct ab8500* dev_get_drvdata (int ) ;
 int of_regulator_match (TYPE_1__*,struct device_node*,struct of_regulator_match*,int ) ;

__attribute__((used)) static int ab8500_regulator_probe(struct platform_device *pdev)
{
 struct ab8500 *ab8500 = dev_get_drvdata(pdev->dev.parent);
 struct device_node *np = pdev->dev.of_node;
 struct of_regulator_match *match;
 int err, i;

 if (!ab8500) {
  dev_err(&pdev->dev, "null mfd parent\n");
  return -EINVAL;
 }

 abx500_get_regulator_info(ab8500);

 err = of_regulator_match(&pdev->dev, np,
     abx500_regulator.match,
     abx500_regulator.match_size);
 if (err < 0) {
  dev_err(&pdev->dev,
   "Error parsing regulator init data: %d\n", err);
  return err;
 }

 match = abx500_regulator.match;
 for (i = 0; i < abx500_regulator.info_size; i++) {
  err = ab8500_regulator_register(pdev, match[i].init_data, i,
      match[i].of_node);
  if (err)
   return err;
 }

 return 0;
}
