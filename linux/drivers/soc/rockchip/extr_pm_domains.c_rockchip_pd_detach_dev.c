
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int name; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ) ;
 int pm_clk_destroy (struct device*) ;

__attribute__((used)) static void rockchip_pd_detach_dev(struct generic_pm_domain *genpd,
       struct device *dev)
{
 dev_dbg(dev, "detaching from power domain '%s'\n", genpd->name);

 pm_clk_destroy(dev);
}
