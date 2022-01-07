
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device_node* of_node; int * ops; scalar_t__ nr_resets; int owner; } ;
struct pistachio_reset_data {TYPE_1__ rcdev; int periph_regs; } ;
struct device_node {int parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ PISTACHIO_RESET_MAX ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 struct pistachio_reset_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_controller_register (struct device*,TYPE_1__*) ;
 int pistachio_reset_ops ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int pistachio_reset_probe(struct platform_device *pdev)
{
 struct pistachio_reset_data *rd;
 struct device *dev = &pdev->dev;
 struct device_node *np = pdev->dev.of_node;

 rd = devm_kzalloc(dev, sizeof(*rd), GFP_KERNEL);
 if (!rd)
  return -ENOMEM;

 rd->periph_regs = syscon_node_to_regmap(np->parent);
 if (IS_ERR(rd->periph_regs))
  return PTR_ERR(rd->periph_regs);

 rd->rcdev.owner = THIS_MODULE;
 rd->rcdev.nr_resets = PISTACHIO_RESET_MAX + 1;
 rd->rcdev.ops = &pistachio_reset_ops;
 rd->rcdev.of_node = np;

 return devm_reset_controller_register(dev, &rd->rcdev);
}
