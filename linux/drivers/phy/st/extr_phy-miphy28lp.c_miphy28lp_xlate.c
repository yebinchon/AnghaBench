
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct phy {TYPE_1__ dev; } ;
struct of_phandle_args {int args_count; int * args; struct device_node* np; } ;
struct miphy28lp_phy {struct phy* phy; int type; } ;
struct miphy28lp_dev {int nphys; struct miphy28lp_phy** phys; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct phy* ERR_PTR (int) ;
 int dev_err (struct device*,char*) ;
 struct miphy28lp_dev* dev_get_drvdata (struct device*) ;
 int miphy28lp_get_addr (struct miphy28lp_phy*) ;

__attribute__((used)) static struct phy *miphy28lp_xlate(struct device *dev,
       struct of_phandle_args *args)
{
 struct miphy28lp_dev *miphy_dev = dev_get_drvdata(dev);
 struct miphy28lp_phy *miphy_phy = ((void*)0);
 struct device_node *phynode = args->np;
 int ret, index = 0;

 if (args->args_count != 1) {
  dev_err(dev, "Invalid number of cells in 'phy' property\n");
  return ERR_PTR(-EINVAL);
 }

 for (index = 0; index < miphy_dev->nphys; index++)
  if (phynode == miphy_dev->phys[index]->phy->dev.of_node) {
   miphy_phy = miphy_dev->phys[index];
   break;
  }

 if (!miphy_phy) {
  dev_err(dev, "Failed to find appropriate phy\n");
  return ERR_PTR(-EINVAL);
 }

 miphy_phy->type = args->args[0];

 ret = miphy28lp_get_addr(miphy_phy);
 if (ret < 0)
  return ERR_PTR(ret);

 return miphy_phy->phy;
}
