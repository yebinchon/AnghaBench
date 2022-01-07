
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_pm_domain {scalar_t__ supply; int ipg_rate_mhz; int regmap; int cntr_pdn_bit; scalar_t__ reg_offs; } ;
struct generic_pm_domain {int dummy; } ;


 int BIT (int ) ;
 int DIV_ROUND_UP (int,int ) ;
 scalar_t__ GPC_CNTR ;
 scalar_t__ GPC_PGC_CTRL_OFFS ;
 scalar_t__ GPC_PGC_PDNSCR_OFFS ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int regulator_disable (scalar_t__) ;
 struct imx_pm_domain* to_imx_pm_domain (struct generic_pm_domain*) ;
 int udelay (int ) ;

__attribute__((used)) static int imx6_pm_domain_power_off(struct generic_pm_domain *genpd)
{
 struct imx_pm_domain *pd = to_imx_pm_domain(genpd);
 int iso, iso2sw;
 u32 val;


 regmap_read(pd->regmap, pd->reg_offs + GPC_PGC_PDNSCR_OFFS, &val);
 iso = val & 0x3f;
 iso2sw = (val >> 8) & 0x3f;


 regmap_update_bits(pd->regmap, pd->reg_offs + GPC_PGC_CTRL_OFFS,
      0x1, 0x1);


 val = BIT(pd->cntr_pdn_bit);
 regmap_update_bits(pd->regmap, GPC_CNTR, val, val);


 udelay(DIV_ROUND_UP(iso + iso2sw, pd->ipg_rate_mhz));

 if (pd->supply)
  regulator_disable(pd->supply);

 return 0;
}
