
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_4__ {int (* power_on ) (TYPE_1__*) ;} ;
struct imx_pm_domain {int ipg_rate_mhz; TYPE_1__ base; int supply; struct regmap* regmap; } ;
struct device {int of_node; } ;


 int CONFIG_PM_GENERIC_DOMAINS ;
 size_t GPC_PGC_DOMAIN_PU ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_regulator_get (struct device*,char*) ;
 struct imx_pm_domain* imx_gpc_domains ;
 int imx_gpc_onecell_data ;
 int imx_pgc_get_clocks (struct device*,struct imx_pm_domain*) ;
 int imx_pgc_put_clocks (struct imx_pm_domain*) ;
 int of_genpd_add_provider_onecell (int ,int *) ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int pm_genpd_remove (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int imx_gpc_old_dt_init(struct device *dev, struct regmap *regmap,
          unsigned int num_domains)
{
 struct imx_pm_domain *domain;
 int i, ret;

 for (i = 0; i < num_domains; i++) {
  domain = &imx_gpc_domains[i];
  domain->regmap = regmap;
  domain->ipg_rate_mhz = 66;

  if (i == 1) {
   domain->supply = devm_regulator_get(dev, "pu");
   if (IS_ERR(domain->supply))
    return PTR_ERR(domain->supply);

   ret = imx_pgc_get_clocks(dev, domain);
   if (ret)
    goto clk_err;

   domain->base.power_on(&domain->base);
  }
 }

 for (i = 0; i < num_domains; i++)
  pm_genpd_init(&imx_gpc_domains[i].base, ((void*)0), 0);

 if (IS_ENABLED(CONFIG_PM_GENERIC_DOMAINS)) {
  ret = of_genpd_add_provider_onecell(dev->of_node,
          &imx_gpc_onecell_data);
  if (ret)
   goto genpd_err;
 }

 return 0;

genpd_err:
 for (i = 0; i < num_domains; i++)
  pm_genpd_remove(&imx_gpc_domains[i].base);
 imx_pgc_put_clocks(&imx_gpc_domains[GPC_PGC_DOMAIN_PU]);
clk_err:
 return ret;
}
