
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct regmap {int dummy; } ;
struct aspeed_sig_desc {unsigned int enable; unsigned int disable; unsigned int mask; int reg; } ;


 int ENODEV ;
 unsigned int __ffs (unsigned int) ;
 int aspeed_sig_desc_print_val (struct aspeed_sig_desc const*,int,unsigned int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

int aspeed_sig_desc_eval(const struct aspeed_sig_desc *desc,
    bool enabled, struct regmap *map)
{
 int ret;
 unsigned int raw;
 u32 want;

 if (!map)
  return -ENODEV;

 ret = regmap_read(map, desc->reg, &raw);
 if (ret)
  return ret;

 aspeed_sig_desc_print_val(desc, enabled, raw);
 want = enabled ? desc->enable : desc->disable;

 return ((raw & desc->mask) >> __ffs(desc->mask)) == want;
}
