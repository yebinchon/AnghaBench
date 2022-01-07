
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pcie_phy {TYPE_1__* phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__ args_count; size_t* args; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;


 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 size_t PHY_MAX_LANE_NUM ;
 scalar_t__ WARN_ON (int) ;
 struct rockchip_pcie_phy* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *rockchip_pcie_phy_of_xlate(struct device *dev,
           struct of_phandle_args *args)
{
 struct rockchip_pcie_phy *rk_phy = dev_get_drvdata(dev);

 if (args->args_count == 0)
  return rk_phy->phys[0].phy;

 if (WARN_ON(args->args[0] >= PHY_MAX_LANE_NUM))
  return ERR_PTR(-ENODEV);

 return rk_phy->phys[args->args[0]].phy;
}
