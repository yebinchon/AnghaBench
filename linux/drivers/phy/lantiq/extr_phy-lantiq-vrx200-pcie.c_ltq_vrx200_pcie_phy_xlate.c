
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct of_phandle_args {int args_count; unsigned int* args; } ;
struct ltq_vrx200_pcie_phy_priv {unsigned int mode; struct phy* phy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct phy* ERR_PTR (int ) ;






 int dev_err (struct device*,char*,...) ;
 struct ltq_vrx200_pcie_phy_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *ltq_vrx200_pcie_phy_xlate(struct device *dev,
          struct of_phandle_args *args)
{
 struct ltq_vrx200_pcie_phy_priv *priv = dev_get_drvdata(dev);
 unsigned int mode;

 if (args->args_count != 1) {
  dev_err(dev, "invalid number of arguments\n");
  return ERR_PTR(-EINVAL);
 }

 mode = args->args[0];

 switch (mode) {
 case 129:
  priv->mode = mode;
  break;

 case 131:
 case 130:
 case 128:
 case 133:
 case 132:
  dev_err(dev, "PHY mode not implemented yet: %u\n", mode);
  return ERR_PTR(-EINVAL);

 default:
  dev_err(dev, "invalid PHY mode %u\n", mode);
  return ERR_PTR(-EINVAL);
 };

 return priv->phy;
}
