
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miphy28lp_phy {int miphy_rst; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int of_reset_control_get_shared (struct device_node*,char*) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int miphy28lp_probe_resets(struct device_node *node,
      struct miphy28lp_phy *miphy_phy)
{
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
 int err;

 miphy_phy->miphy_rst =
  of_reset_control_get_shared(node, "miphy-sw-rst");

 if (IS_ERR(miphy_phy->miphy_rst)) {
  dev_err(miphy_dev->dev,
    "miphy soft reset control not defined\n");
  return PTR_ERR(miphy_phy->miphy_rst);
 }

 err = reset_control_deassert(miphy_phy->miphy_rst);
 if (err) {
  dev_err(miphy_dev->dev, "unable to bring out of miphy reset\n");
  return err;
 }

 return 0;
}
