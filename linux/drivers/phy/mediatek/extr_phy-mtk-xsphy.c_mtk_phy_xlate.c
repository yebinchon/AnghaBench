
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsphy_instance {scalar_t__ type; struct phy* phy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct phy {TYPE_1__ dev; } ;
struct of_phandle_args {int args_count; scalar_t__* args; struct device_node* np; } ;
struct mtk_xsphy {int nphys; struct xsphy_instance** phys; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ PHY_TYPE_USB2 ;
 scalar_t__ PHY_TYPE_USB3 ;
 int dev_err (struct device*,char*,...) ;
 struct mtk_xsphy* dev_get_drvdata (struct device*) ;
 int phy_parse_property (struct mtk_xsphy*,struct xsphy_instance*) ;

__attribute__((used)) static struct phy *mtk_phy_xlate(struct device *dev,
     struct of_phandle_args *args)
{
 struct mtk_xsphy *xsphy = dev_get_drvdata(dev);
 struct xsphy_instance *inst = ((void*)0);
 struct device_node *phy_np = args->np;
 int index;

 if (args->args_count != 1) {
  dev_err(dev, "invalid number of cells in 'phy' property\n");
  return ERR_PTR(-EINVAL);
 }

 for (index = 0; index < xsphy->nphys; index++)
  if (phy_np == xsphy->phys[index]->phy->dev.of_node) {
   inst = xsphy->phys[index];
   break;
  }

 if (!inst) {
  dev_err(dev, "failed to find appropriate phy\n");
  return ERR_PTR(-EINVAL);
 }

 inst->type = args->args[0];
 if (!(inst->type == PHY_TYPE_USB2 ||
       inst->type == PHY_TYPE_USB3)) {
  dev_err(dev, "unsupported phy type: %d\n", inst->type);
  return ERR_PTR(-EINVAL);
 }

 phy_parse_property(xsphy, inst);

 return inst->phy;
}
