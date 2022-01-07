
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct generic_pm_domain {int (* power_on ) (struct generic_pm_domain*) ;} ;
struct scp_domain {struct generic_pm_domain genpd; } ;
struct genpd_onecell_data {int dummy; } ;
struct scp {struct genpd_onecell_data pd_data; struct scp_domain* domains; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dev_err (TYPE_1__*,char*,int) ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;
 int pm_genpd_init (struct generic_pm_domain*,int *,int) ;
 int stub1 (struct generic_pm_domain*) ;

__attribute__((used)) static void mtk_register_power_domains(struct platform_device *pdev,
    struct scp *scp, int num)
{
 struct genpd_onecell_data *pd_data;
 int i, ret;

 for (i = 0; i < num; i++) {
  struct scp_domain *scpd = &scp->domains[i];
  struct generic_pm_domain *genpd = &scpd->genpd;







  genpd->power_on(genpd);

  pm_genpd_init(genpd, ((void*)0), 0);
 }







 pd_data = &scp->pd_data;

 ret = of_genpd_add_provider_onecell(pdev->dev.of_node, pd_data);
 if (ret)
  dev_err(&pdev->dev, "Failed to add OF provider: %d\n", ret);
}
