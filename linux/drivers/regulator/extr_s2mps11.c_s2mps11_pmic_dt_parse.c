
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s2mps11_info {scalar_t__ dev_type; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_regulator_match {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int of_node; } ;


 int EINVAL ;
 scalar_t__ S2MPS14X ;
 int dev_err (TYPE_2__*,char*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 int of_regulator_match (TYPE_2__*,struct device_node*,struct of_regulator_match*,unsigned int) ;
 int s2mps14_pmic_dt_parse_ext_control_gpio (struct platform_device*,struct of_regulator_match*,struct s2mps11_info*) ;

__attribute__((used)) static int s2mps11_pmic_dt_parse(struct platform_device *pdev,
  struct of_regulator_match *rdata, struct s2mps11_info *s2mps11,
  unsigned int rdev_num)
{
 struct device_node *reg_np;

 reg_np = of_get_child_by_name(pdev->dev.parent->of_node, "regulators");
 if (!reg_np) {
  dev_err(&pdev->dev, "could not find regulators sub-node\n");
  return -EINVAL;
 }

 of_regulator_match(&pdev->dev, reg_np, rdata, rdev_num);
 if (s2mps11->dev_type == S2MPS14X)
  s2mps14_pmic_dt_parse_ext_control_gpio(pdev, rdata, s2mps11);

 of_node_put(reg_np);

 return 0;
}
