
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct device {int parent; scalar_t__ of_node; struct imx_pm_domain* platform_data; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int (* power_on ) (TYPE_1__*) ;} ;
struct imx_pm_domain {TYPE_1__ base; } ;


 int CONFIG_PM_GENERIC_DOMAINS ;
 int DL_FLAG_AUTOREMOVE_CONSUMER ;
 scalar_t__ IS_ENABLED (int ) ;
 int device_link_add (struct device*,int ,int ) ;
 int imx_pgc_parse_dt (struct device*,struct imx_pm_domain*) ;
 int imx_pgc_put_clocks (struct imx_pm_domain*) ;
 int of_genpd_add_provider_simple (scalar_t__,TYPE_1__*) ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int pm_genpd_remove (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int imx_pgc_power_domain_probe(struct platform_device *pdev)
{
 struct imx_pm_domain *domain = pdev->dev.platform_data;
 struct device *dev = &pdev->dev;
 int ret;


 if (dev->of_node) {
  ret = imx_pgc_parse_dt(dev, domain);
  if (ret)
   return ret;
 }


 if (domain->base.power_on)
  domain->base.power_on(&domain->base);

 if (IS_ENABLED(CONFIG_PM_GENERIC_DOMAINS)) {
  pm_genpd_init(&domain->base, ((void*)0), 0);
  ret = of_genpd_add_provider_simple(dev->of_node, &domain->base);
  if (ret)
   goto genpd_err;
 }

 device_link_add(dev, dev->parent, DL_FLAG_AUTOREMOVE_CONSUMER);

 return 0;

genpd_err:
 pm_genpd_remove(&domain->base);
 imx_pgc_put_clocks(domain);

 return ret;
}
