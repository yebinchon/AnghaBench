
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; struct imx_pgc_domain* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imx_pgc_domain {int genpd; TYPE_1__* dev; scalar_t__ voltage; int regulator; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_regulator_get_optional (TYPE_1__*,char*) ;
 int imx_pgc_get_clocks (struct imx_pgc_domain*) ;
 int imx_pgc_put_clocks (struct imx_pgc_domain*) ;
 int of_genpd_add_provider_simple (int ,int *) ;
 int pm_genpd_init (int *,int *,int) ;
 int pm_genpd_remove (int *) ;
 int regulator_set_voltage (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int imx_pgc_domain_probe(struct platform_device *pdev)
{
 struct imx_pgc_domain *domain = pdev->dev.platform_data;
 int ret;

 domain->dev = &pdev->dev;

 domain->regulator = devm_regulator_get_optional(domain->dev, "power");
 if (IS_ERR(domain->regulator)) {
  if (PTR_ERR(domain->regulator) != -ENODEV) {
   if (PTR_ERR(domain->regulator) != -EPROBE_DEFER)
    dev_err(domain->dev, "Failed to get domain's regulator\n");
   return PTR_ERR(domain->regulator);
  }
 } else if (domain->voltage) {
  regulator_set_voltage(domain->regulator,
          domain->voltage, domain->voltage);
 }

 ret = imx_pgc_get_clocks(domain);
 if (ret) {
  if (ret != -EPROBE_DEFER)
   dev_err(domain->dev, "Failed to get domain's clocks\n");
  return ret;
 }

 ret = pm_genpd_init(&domain->genpd, ((void*)0), 1);
 if (ret) {
  dev_err(domain->dev, "Failed to init power domain\n");
  imx_pgc_put_clocks(domain);
  return ret;
 }

 ret = of_genpd_add_provider_simple(domain->dev->of_node,
        &domain->genpd);
 if (ret) {
  dev_err(domain->dev, "Failed to add genpd provider\n");
  pm_genpd_remove(&domain->genpd);
  imx_pgc_put_clocks(domain);
 }

 return ret;
}
