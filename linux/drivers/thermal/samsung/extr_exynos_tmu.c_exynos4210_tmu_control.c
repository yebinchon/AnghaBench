
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct exynos_tmu_data {unsigned int ntrip; scalar_t__ soc; scalar_t__ base; struct thermal_zone_device* tzd; } ;


 int EXYNOS_TMU_CORE_EN_SHIFT ;
 unsigned int EXYNOS_TMU_INTEN_FALL0_SHIFT ;
 unsigned int EXYNOS_TMU_INTEN_RISE0_SHIFT ;
 scalar_t__ EXYNOS_TMU_REG_CONTROL ;
 scalar_t__ EXYNOS_TMU_REG_INTEN ;
 scalar_t__ SOC_ARCH_EXYNOS4210 ;
 unsigned int get_con_reg (struct exynos_tmu_data*,int ) ;
 int of_thermal_is_trip_valid (struct thermal_zone_device*,unsigned int) ;
 struct exynos_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void exynos4210_tmu_control(struct platform_device *pdev, bool on)
{
 struct exynos_tmu_data *data = platform_get_drvdata(pdev);
 struct thermal_zone_device *tz = data->tzd;
 unsigned int con, interrupt_en = 0, i;

 con = get_con_reg(data, readl(data->base + EXYNOS_TMU_REG_CONTROL));

 if (on) {
  for (i = 0; i < data->ntrip; i++) {
   if (!of_thermal_is_trip_valid(tz, i))
    continue;

   interrupt_en |=
    (1 << (EXYNOS_TMU_INTEN_RISE0_SHIFT + i * 4));
  }

  if (data->soc != SOC_ARCH_EXYNOS4210)
   interrupt_en |=
    interrupt_en << EXYNOS_TMU_INTEN_FALL0_SHIFT;

  con |= (1 << EXYNOS_TMU_CORE_EN_SHIFT);
 } else {
  con &= ~(1 << EXYNOS_TMU_CORE_EN_SHIFT);
 }

 writel(interrupt_en, data->base + EXYNOS_TMU_REG_INTEN);
 writel(con, data->base + EXYNOS_TMU_REG_CONTROL);
}
