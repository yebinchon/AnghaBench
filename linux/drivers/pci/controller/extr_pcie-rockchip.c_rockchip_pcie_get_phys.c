
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rockchip_pcie {int legacy_phy; struct phy** phys; struct device* dev; } ;
struct phy {int dummy; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 size_t MAX_LANE_NUM ;
 int PTR_ERR (struct phy*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,size_t,int) ;
 int dev_warn (struct device*,char*) ;
 struct phy* devm_of_phy_get (struct device*,int ,char*) ;
 struct phy* devm_phy_get (struct device*,char*) ;
 char* kasprintf (int ,char*,size_t) ;
 int kfree (char*) ;

int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip)
{
 struct device *dev = rockchip->dev;
 struct phy *phy;
 char *name;
 u32 i;

 phy = devm_phy_get(dev, "pcie-phy");
 if (!IS_ERR(phy)) {
  rockchip->legacy_phy = 1;
  rockchip->phys[0] = phy;
  dev_warn(dev, "legacy phy model is deprecated!\n");
  return 0;
 }

 if (PTR_ERR(phy) == -EPROBE_DEFER)
  return PTR_ERR(phy);

 dev_dbg(dev, "missing legacy phy; search for per-lane PHY\n");

 for (i = 0; i < MAX_LANE_NUM; i++) {
  name = kasprintf(GFP_KERNEL, "pcie-phy-%u", i);
  if (!name)
   return -ENOMEM;

  phy = devm_of_phy_get(dev, dev->of_node, name);
  kfree(name);

  if (IS_ERR(phy)) {
   if (PTR_ERR(phy) != -EPROBE_DEFER)
    dev_err(dev, "missing phy for lane %d: %ld\n",
     i, PTR_ERR(phy));
   return PTR_ERR(phy);
  }

  rockchip->phys[i] = phy;
 }

 return 0;
}
