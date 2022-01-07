
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_gx_pwrc_vpu {int regmap_ao; } ;


 int AO_RTI_GEN_PWR_SLEEP0 ;
 int GEN_PWR_VPU_HDMI ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool meson_gx_pwrc_vpu_get_power(struct meson_gx_pwrc_vpu *pd)
{
 u32 reg;

 regmap_read(pd->regmap_ao, AO_RTI_GEN_PWR_SLEEP0, &reg);

 return (reg & GEN_PWR_VPU_HDMI);
}
