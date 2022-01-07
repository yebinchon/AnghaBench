
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* top_pd; } ;
struct meson_ee_pwrc_domain {TYPE_3__ desc; TYPE_1__* pwrc; } ;
struct TYPE_5__ {int sleep_mask; int sleep_reg; } ;
struct TYPE_4__ {int regmap_ao; } ;


 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain)
{
 u32 reg;

 regmap_read(pwrc_domain->pwrc->regmap_ao,
      pwrc_domain->desc.top_pd->sleep_reg, &reg);

 return (reg & pwrc_domain->desc.top_pd->sleep_mask);
}
