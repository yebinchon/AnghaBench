
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct generic_pm_domain {int detach_dev; int attach_dev; int power_on; int power_off; int name; } ;
struct zynqmp_pm_domain {struct generic_pm_domain gpd; scalar_t__ node_id; } ;
struct device {TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct genpd_onecell_data {int num_domains; struct generic_pm_domain** domains; int xlate; } ;
struct TYPE_2__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ZYNQMP_NUM_DOMAINS ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 struct genpd_onecell_data* devm_kzalloc (struct device*,int,int ) ;
 int eemi_ops ;
 int kasprintf (int ,char*,int) ;
 int of_genpd_add_provider_onecell (int ,struct genpd_onecell_data*) ;
 int pm_genpd_init (struct generic_pm_domain*,int *,int) ;
 int zynqmp_gpd_attach_dev ;
 int zynqmp_gpd_detach_dev ;
 int zynqmp_gpd_power_off ;
 int zynqmp_gpd_power_on ;
 int zynqmp_gpd_xlate ;
 int zynqmp_pm_get_eemi_ops () ;

__attribute__((used)) static int zynqmp_gpd_probe(struct platform_device *pdev)
{
 int i;
 struct genpd_onecell_data *zynqmp_pd_data;
 struct generic_pm_domain **domains;
 struct zynqmp_pm_domain *pd;
 struct device *dev = &pdev->dev;

 eemi_ops = zynqmp_pm_get_eemi_ops();
 if (IS_ERR(eemi_ops))
  return PTR_ERR(eemi_ops);

 pd = devm_kcalloc(dev, ZYNQMP_NUM_DOMAINS, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 zynqmp_pd_data = devm_kzalloc(dev, sizeof(*zynqmp_pd_data), GFP_KERNEL);
 if (!zynqmp_pd_data)
  return -ENOMEM;

 zynqmp_pd_data->xlate = zynqmp_gpd_xlate;

 domains = devm_kcalloc(dev, ZYNQMP_NUM_DOMAINS, sizeof(*domains),
          GFP_KERNEL);
 if (!domains)
  return -ENOMEM;

 for (i = 0; i < ZYNQMP_NUM_DOMAINS; i++, pd++) {
  pd->node_id = 0;
  pd->gpd.name = kasprintf(GFP_KERNEL, "domain%d", i);
  pd->gpd.power_off = zynqmp_gpd_power_off;
  pd->gpd.power_on = zynqmp_gpd_power_on;
  pd->gpd.attach_dev = zynqmp_gpd_attach_dev;
  pd->gpd.detach_dev = zynqmp_gpd_detach_dev;

  domains[i] = &pd->gpd;


  pm_genpd_init(&pd->gpd, ((void*)0), 1);
 }

 zynqmp_pd_data->domains = domains;
 zynqmp_pd_data->num_domains = ZYNQMP_NUM_DOMAINS;
 of_genpd_add_provider_onecell(dev->parent->of_node, zynqmp_pd_data);

 return 0;
}
