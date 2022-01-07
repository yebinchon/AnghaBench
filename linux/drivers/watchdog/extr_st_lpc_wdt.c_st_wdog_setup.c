
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_wdog {TYPE_1__* syscfg; int regmap; int warm_reset; } ;
struct TYPE_2__ {int enable_mask; scalar_t__ enable_reg; int reset_type_mask; scalar_t__ reset_type_reg; } ;


 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void st_wdog_setup(struct st_wdog *st_wdog, bool enable)
{

 if (st_wdog->syscfg->reset_type_reg)
  regmap_update_bits(st_wdog->regmap,
       st_wdog->syscfg->reset_type_reg,
       st_wdog->syscfg->reset_type_mask,
       st_wdog->warm_reset);


 regmap_update_bits(st_wdog->regmap,
      st_wdog->syscfg->enable_reg,
      st_wdog->syscfg->enable_mask,
      enable ? 0 : st_wdog->syscfg->enable_mask);
}
