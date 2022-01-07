
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct of_phandle_args {size_t* args; } ;
struct exynos_mipi_video_phy {size_t num_phys; TYPE_1__* phys; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;


 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct exynos_mipi_video_phy* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *exynos_mipi_video_phy_xlate(struct device *dev,
     struct of_phandle_args *args)
{
 struct exynos_mipi_video_phy *state = dev_get_drvdata(dev);

 if (WARN_ON(args->args[0] >= state->num_phys))
  return ERR_PTR(-ENODEV);

 return state->phys[args->args[0]].phy;
}
