
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_berlin_priv {scalar_t__ nphys; TYPE_1__** phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ index; struct phy* phy; } ;


 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct phy_berlin_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *phy_berlin_sata_phy_xlate(struct device *dev,
          struct of_phandle_args *args)
{
 struct phy_berlin_priv *priv = dev_get_drvdata(dev);
 int i;

 if (WARN_ON(args->args[0] >= priv->nphys))
  return ERR_PTR(-ENODEV);

 for (i = 0; i < priv->nphys; i++) {
  if (priv->phys[i]->index == args->args[0])
   break;
 }

 if (i == priv->nphys)
  return ERR_PTR(-ENODEV);

 return priv->phys[i]->phy;
}
