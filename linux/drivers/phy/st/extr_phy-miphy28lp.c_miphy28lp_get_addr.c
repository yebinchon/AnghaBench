
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct miphy28lp_phy {scalar_t__ type; int pipebase; int base; TYPE_2__* phy; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EINVAL ;
 scalar_t__ PHY_TYPE_PCIE ;
 scalar_t__ PHY_TYPE_SATA ;
 scalar_t__ PHY_TYPE_USB3 ;
 char** PHY_TYPE_name ;
 int miphy28lp_get_one_addr (int ,struct device_node*,char*,int *) ;

__attribute__((used)) static int miphy28lp_get_addr(struct miphy28lp_phy *miphy_phy)
{
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
 struct device_node *phynode = miphy_phy->phy->dev.of_node;
 int err;

 if ((miphy_phy->type != PHY_TYPE_SATA) &&
     (miphy_phy->type != PHY_TYPE_PCIE) &&
     (miphy_phy->type != PHY_TYPE_USB3)) {
  return -EINVAL;
 }

 err = miphy28lp_get_one_addr(miphy_dev->dev, phynode,
   PHY_TYPE_name[miphy_phy->type - PHY_TYPE_SATA],
   &miphy_phy->base);
 if (err)
  return err;

 if ((miphy_phy->type == PHY_TYPE_PCIE) ||
     (miphy_phy->type == PHY_TYPE_USB3)) {
  err = miphy28lp_get_one_addr(miphy_dev->dev, phynode, "pipew",
          &miphy_phy->pipebase);
  if (err)
   return err;
 }

 return 0;
}
