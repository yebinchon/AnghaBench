
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ti_sci_genpd_dev_data {int exclusive; } ;
struct generic_pm_domain_data {struct ti_sci_genpd_dev_data* data; } ;
struct device {int dummy; } ;


 struct generic_pm_domain_data* dev_gpd_data (struct device*) ;

__attribute__((used)) static u8 is_ti_sci_dev_exclusive(struct device *dev)
{
 struct generic_pm_domain_data *genpd_data = dev_gpd_data(dev);
 struct ti_sci_genpd_dev_data *sci_dev_data = genpd_data->data;

 return sci_dev_data->exclusive;
}
