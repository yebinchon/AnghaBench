
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_gx_pwrc_vpu {int rstc; int regmap_ao; int regmap_hhi; } ;
struct generic_pm_domain {int dummy; } ;


 int AO_RTI_GEN_PWR_SLEEP0 ;
 int BIT (int) ;
 int GEN_PWR_VPU_HDMI ;
 int GEN_PWR_VPU_HDMI_ISO ;
 int HHI_MEM_PD_REG0 ;
 int HHI_VPU_MEM_PD_REG0 ;
 int HHI_VPU_MEM_PD_REG1 ;
 struct meson_gx_pwrc_vpu* genpd_to_pd (struct generic_pm_domain*) ;
 int meson_gx_pwrc_vpu_setup_clk (struct meson_gx_pwrc_vpu*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int udelay (int) ;

__attribute__((used)) static int meson_gx_pwrc_vpu_power_on(struct generic_pm_domain *genpd)
{
 struct meson_gx_pwrc_vpu *pd = genpd_to_pd(genpd);
 int ret;
 int i;

 regmap_update_bits(pd->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
      GEN_PWR_VPU_HDMI, 0);
 udelay(20);


 for (i = 0; i < 32; i += 2) {
  regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG0,
       0x3 << i, 0);
  udelay(5);
 }

 for (i = 0; i < 32; i += 2) {
  regmap_update_bits(pd->regmap_hhi, HHI_VPU_MEM_PD_REG1,
       0x3 << i, 0);
  udelay(5);
 }

 for (i = 8; i < 16; i++) {
  regmap_update_bits(pd->regmap_hhi, HHI_MEM_PD_REG0,
       BIT(i), 0);
  udelay(5);
 }
 udelay(20);

 ret = reset_control_assert(pd->rstc);
 if (ret)
  return ret;

 regmap_update_bits(pd->regmap_ao, AO_RTI_GEN_PWR_SLEEP0,
      GEN_PWR_VPU_HDMI_ISO, 0);

 ret = reset_control_deassert(pd->rstc);
 if (ret)
  return ret;

 ret = meson_gx_pwrc_vpu_setup_clk(pd);
 if (ret)
  return ret;

 return 0;
}
