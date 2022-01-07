
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct mvebu_a3700_comphy_lane {scalar_t__ port; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct phy*) ;
 scalar_t__ MVEBU_A3700_COMPHY_PORTS ;
 scalar_t__ WARN_ON (int) ;
 struct phy* of_phy_simple_xlate (struct device*,struct of_phandle_args*) ;
 struct mvebu_a3700_comphy_lane* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static struct phy *mvebu_a3700_comphy_xlate(struct device *dev,
         struct of_phandle_args *args)
{
 struct mvebu_a3700_comphy_lane *lane;
 struct phy *phy;

 if (WARN_ON(args->args[0] >= MVEBU_A3700_COMPHY_PORTS))
  return ERR_PTR(-EINVAL);

 phy = of_phy_simple_xlate(dev, args);
 if (IS_ERR(phy))
  return phy;

 lane = phy_get_drvdata(phy);
 lane->port = args->args[0];

 return phy;
}
