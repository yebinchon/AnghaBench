
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl {struct phy** phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {unsigned int* args; scalar_t__ args_count; } ;
struct device {int dummy; } ;


 unsigned int ARRAY_SIZE (struct phy**) ;
 int EINVAL ;
 struct phy* ERR_PTR (int ) ;
 struct tegra_xusb_padctl* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *tegra_xusb_padctl_xlate(struct device *dev,
        struct of_phandle_args *args)
{
 struct tegra_xusb_padctl *padctl = dev_get_drvdata(dev);
 unsigned int index = args->args[0];

 if (args->args_count <= 0)
  return ERR_PTR(-EINVAL);

 if (index >= ARRAY_SIZE(padctl->phys))
  return ERR_PTR(-EINVAL);

 return padctl->phys[index];
}
