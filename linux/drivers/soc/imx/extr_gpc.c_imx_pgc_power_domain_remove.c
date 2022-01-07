
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; struct imx_pm_domain* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imx_pm_domain {int base; } ;


 int CONFIG_PM_GENERIC_DOMAINS ;
 scalar_t__ IS_ENABLED (int ) ;
 int imx_pgc_put_clocks (struct imx_pm_domain*) ;
 int of_genpd_del_provider (int ) ;
 int pm_genpd_remove (int *) ;

__attribute__((used)) static int imx_pgc_power_domain_remove(struct platform_device *pdev)
{
 struct imx_pm_domain *domain = pdev->dev.platform_data;

 if (IS_ENABLED(CONFIG_PM_GENERIC_DOMAINS)) {
  of_genpd_del_provider(pdev->dev.of_node);
  pm_genpd_remove(&domain->base);
  imx_pgc_put_clocks(domain);
 }

 return 0;
}
