
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct st_retime_dedicated {int * rt; } ;
struct TYPE_2__ {struct st_retime_dedicated rt_d; } ;
struct st_pio_control {int rt_pin_mask; TYPE_1__ rt; } ;
struct st_pinctrl {struct st_pctl_data* data; struct regmap* regmap; struct device* dev; } ;
struct st_pctl_data {int rt; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct device {int dummy; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 struct reg_field REG_FIELD (int,int ,int) ;
 int RT_D_CFGS_PER_BANK ;
 int devm_regmap_field_alloc (struct device*,struct regmap*,struct reg_field) ;

__attribute__((used)) static int st_pctl_dt_setup_retime_dedicated(struct st_pinctrl *info,
 int bank, struct st_pio_control *pc)
{
 struct device *dev = info->dev;
 struct regmap *rm = info->regmap;
 const struct st_pctl_data *data = info->data;

 int reg_offset = (data->rt + bank * RT_D_CFGS_PER_BANK) * 4;
 struct st_retime_dedicated *rt_d = &pc->rt.rt_d;
 unsigned int j;
 u32 pin_mask = pc->rt_pin_mask;

 for (j = 0; j < RT_D_CFGS_PER_BANK; j++) {
  if (BIT(j) & pin_mask) {
   struct reg_field reg = REG_FIELD(reg_offset, 0, 31);
   rt_d->rt[j] = devm_regmap_field_alloc(dev, rm, reg);
   if (IS_ERR(rt_d->rt[j]))
    return -EINVAL;
   reg_offset += 4;
  }
 }
 return 0;
}
