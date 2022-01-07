
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct armada375_cluster_phy {int reg; scalar_t__ use_usb3; } ;


 int ENODEV ;
 int USB2_PHY_CONFIG_DISABLE ;
 struct armada375_cluster_phy* phy_get_drvdata (struct phy*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int armada375_usb_phy_init(struct phy *phy)
{
 struct armada375_cluster_phy *cluster_phy;
 u32 reg;

 cluster_phy = phy_get_drvdata(phy);
 if (!cluster_phy)
  return -ENODEV;

 reg = readl(cluster_phy->reg);
 if (cluster_phy->use_usb3)
  reg |= USB2_PHY_CONFIG_DISABLE;
 else
  reg &= ~USB2_PHY_CONFIG_DISABLE;
 writel(reg, cluster_phy->reg);

 return 0;
}
