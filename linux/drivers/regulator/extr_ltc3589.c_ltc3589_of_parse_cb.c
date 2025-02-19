
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regulator_desc {size_t id; void* fixed_uV; void* uV_step; void* min_uV; } ;
struct regulator_config {struct ltc3589* driver_data; } ;
struct ltc3589 {int dev; struct regulator_desc* regulator_descs; } ;
struct device_node {int dummy; } ;


 size_t LTC3589_LDO3 ;
 int dev_err (int ,char*,int) ;
 void* ltc3589_scale (void*,int ,int ) ;
 int of_property_read_u32_array (struct device_node*,char*,int *,int) ;

__attribute__((used)) static int ltc3589_of_parse_cb(struct device_node *np,
          const struct regulator_desc *desc,
          struct regulator_config *config)
{
 struct ltc3589 *ltc3589 = config->driver_data;
 struct regulator_desc *rdesc = &ltc3589->regulator_descs[desc->id];
 u32 r[2];
 int ret;


 if (desc->id >= LTC3589_LDO3)
  return 0;

 ret = of_property_read_u32_array(np, "lltc,fb-voltage-divider", r, 2);
 if (ret) {
  dev_err(ltc3589->dev, "Failed to parse voltage divider: %d\n",
   ret);
  return ret;
 }

 if (!r[0] || !r[1])
  return 0;

 rdesc->min_uV = ltc3589_scale(desc->min_uV, r[0], r[1]);
 rdesc->uV_step = ltc3589_scale(desc->uV_step, r[0], r[1]);
 rdesc->fixed_uV = ltc3589_scale(desc->fixed_uV, r[0], r[1]);

 return 0;
}
