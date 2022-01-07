
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct genpd_onecell_data {int num_domains; struct generic_pm_domain** domains; } ;
struct generic_pm_domain {int power_off; int power_on; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_info (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct genpd_onecell_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;
 int pcubase ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_genpd_init (struct generic_pm_domain*,int *,int) ;
 int zx2967_power_off ;
 int zx2967_power_on ;

int zx2967_pd_probe(struct platform_device *pdev,
      struct generic_pm_domain **zx_pm_domains,
      int domain_num)
{
 struct genpd_onecell_data *genpd_data;
 struct resource *res;
 int i;

 genpd_data = devm_kzalloc(&pdev->dev, sizeof(*genpd_data), GFP_KERNEL);
 if (!genpd_data)
  return -ENOMEM;

 genpd_data->domains = zx_pm_domains;
 genpd_data->num_domains = domain_num;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pcubase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pcubase))
  return PTR_ERR(pcubase);

 for (i = 0; i < domain_num; ++i) {
  zx_pm_domains[i]->power_on = zx2967_power_on;
  zx_pm_domains[i]->power_off = zx2967_power_off;

  pm_genpd_init(zx_pm_domains[i], ((void*)0), 0);
 }

 of_genpd_add_provider_onecell(pdev->dev.of_node, genpd_data);
 dev_info(&pdev->dev, "powerdomain init ok\n");
 return 0;
}
