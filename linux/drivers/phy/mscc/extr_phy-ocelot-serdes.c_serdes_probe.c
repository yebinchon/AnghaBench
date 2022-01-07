
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct serdes_ctrl {TYPE_2__* dev; int * phys; int regs; } ;
struct TYPE_6__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct phy_provider {int dummy; } ;
struct TYPE_5__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 unsigned int SERDES_MAX ;
 int dev_set_drvdata (TYPE_2__*,struct serdes_ctrl*) ;
 struct serdes_ctrl* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (TYPE_2__*,int ) ;
 int serdes_phy_create (struct serdes_ctrl*,unsigned int,int *) ;
 int serdes_simple_xlate ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int serdes_probe(struct platform_device *pdev)
{
 struct phy_provider *provider;
 struct serdes_ctrl *ctrl;
 unsigned int i;
 int ret;

 ctrl = devm_kzalloc(&pdev->dev, sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return -ENOMEM;

 ctrl->dev = &pdev->dev;
 ctrl->regs = syscon_node_to_regmap(pdev->dev.parent->of_node);
 if (IS_ERR(ctrl->regs))
  return PTR_ERR(ctrl->regs);

 for (i = 0; i < SERDES_MAX; i++) {
  ret = serdes_phy_create(ctrl, i, &ctrl->phys[i]);
  if (ret)
   return ret;
 }

 dev_set_drvdata(&pdev->dev, ctrl);

 provider = devm_of_phy_provider_register(ctrl->dev,
       serdes_simple_xlate);

 return PTR_ERR_OR_ZERO(provider);
}
