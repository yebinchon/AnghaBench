
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct histb_combphy_mode {scalar_t__ select; scalar_t__ fixed; } ;
struct histb_combphy_priv {struct phy* phy; struct histb_combphy_mode mode; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ PHY_TYPE_SATA ;
 scalar_t__ PHY_TYPE_USB3 ;
 int dev_err (struct device*,char*,...) ;
 struct histb_combphy_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ is_mode_fixed (struct histb_combphy_mode*) ;

__attribute__((used)) static struct phy *histb_combphy_xlate(struct device *dev,
           struct of_phandle_args *args)
{
 struct histb_combphy_priv *priv = dev_get_drvdata(dev);
 struct histb_combphy_mode *mode = &priv->mode;

 if (args->args_count < 1) {
  dev_err(dev, "invalid number of arguments\n");
  return ERR_PTR(-EINVAL);
 }

 mode->select = args->args[0];

 if (mode->select < PHY_TYPE_SATA || mode->select > PHY_TYPE_USB3) {
  dev_err(dev, "invalid phy mode select argument\n");
  return ERR_PTR(-EINVAL);
 }

 if (is_mode_fixed(mode) && mode->select != mode->fixed) {
  dev_err(dev, "mode select %d mismatch fixed phy mode %d\n",
   mode->select, mode->fixed);
  return ERR_PTR(-EINVAL);
 }

 return priv->phy;
}
