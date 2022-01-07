
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regulator_desc {int dummy; } ;
struct fan53555_platform_data {int sleep_vsel_id; int regulator; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct fan53555_platform_data* devm_kzalloc (struct device*,int,int ) ;
 int of_get_regulator_init_data (struct device*,struct device_node*,struct regulator_desc const*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct fan53555_platform_data *fan53555_parse_dt(struct device *dev,
           struct device_node *np,
           const struct regulator_desc *desc)
{
 struct fan53555_platform_data *pdata;
 int ret;
 u32 tmp;

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 pdata->regulator = of_get_regulator_init_data(dev, np, desc);

 ret = of_property_read_u32(np, "fcs,suspend-voltage-selector",
       &tmp);
 if (!ret)
  pdata->sleep_vsel_id = tmp;

 return pdata;
}
