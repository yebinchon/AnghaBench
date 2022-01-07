
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdes_am654 {int busy; int type; int control; } ;
struct phy {int dummy; } ;
struct of_phandle_args {int * args; } ;
struct device {int dummy; } ;


 int EBUSY ;
 struct phy* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct phy*) ;
 int dev_err (struct device*,char*) ;
 int mux_control_select (int ,int ) ;
 struct phy* of_phy_simple_xlate (struct device*,struct of_phandle_args*) ;
 struct serdes_am654* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static struct phy *serdes_am654_xlate(struct device *dev,
          struct of_phandle_args *args)
{
 struct serdes_am654 *am654_phy;
 struct phy *phy;
 int ret;

 phy = of_phy_simple_xlate(dev, args);
 if (IS_ERR(phy))
  return phy;

 am654_phy = phy_get_drvdata(phy);
 if (am654_phy->busy)
  return ERR_PTR(-EBUSY);

 ret = mux_control_select(am654_phy->control, args->args[1]);
 if (ret) {
  dev_err(dev, "Failed to select SERDES Lane Function\n");
  return ERR_PTR(ret);
 }

 am654_phy->busy = 1;
 am654_phy->type = args->args[0];

 return phy;
}
