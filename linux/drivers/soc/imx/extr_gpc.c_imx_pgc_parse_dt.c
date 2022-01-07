
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_pm_domain {int * supply; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * devm_regulator_get_optional (struct device*,char*) ;
 int imx_pgc_get_clocks (struct device*,struct imx_pm_domain*) ;

__attribute__((used)) static int imx_pgc_parse_dt(struct device *dev, struct imx_pm_domain *domain)
{

 domain->supply = devm_regulator_get_optional(dev, "power");
 if (IS_ERR(domain->supply)) {
  if (PTR_ERR(domain->supply) == -ENODEV)
   domain->supply = ((void*)0);
  else
   return PTR_ERR(domain->supply);
 }


 return imx_pgc_get_clocks(dev, domain);
}
