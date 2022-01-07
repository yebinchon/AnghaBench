
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct samsung_usb2_phy_driver {TYPE_2__* instances; TYPE_1__* cfg; } ;
struct phy {int dummy; } ;
struct of_phandle_args {size_t* args; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct phy* phy; } ;
struct TYPE_3__ {size_t num_phys; } ;


 int EINVAL ;
 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct samsung_usb2_phy_driver* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *samsung_usb2_phy_xlate(struct device *dev,
     struct of_phandle_args *args)
{
 struct samsung_usb2_phy_driver *drv;

 drv = dev_get_drvdata(dev);
 if (!drv)
  return ERR_PTR(-EINVAL);

 if (WARN_ON(args->args[0] >= drv->cfg->num_phys))
  return ERR_PTR(-ENODEV);

 return drv->instances[args->args[0]].phy;
}
