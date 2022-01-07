
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct exynos_tmu_data {scalar_t__ soc; scalar_t__ base; } ;


 scalar_t__ EXYNOS5260_TMU_REG_INTCLEAR ;
 scalar_t__ EXYNOS5260_TMU_REG_INTSTAT ;
 scalar_t__ EXYNOS5433_TMU_REG_INTPEND ;
 scalar_t__ EXYNOS7_TMU_REG_INTPEND ;
 scalar_t__ EXYNOS_TMU_REG_INTCLEAR ;
 scalar_t__ EXYNOS_TMU_REG_INTSTAT ;
 scalar_t__ SOC_ARCH_EXYNOS5260 ;
 scalar_t__ SOC_ARCH_EXYNOS5433 ;
 scalar_t__ SOC_ARCH_EXYNOS7 ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void exynos4210_tmu_clear_irqs(struct exynos_tmu_data *data)
{
 unsigned int val_irq;
 u32 tmu_intstat, tmu_intclear;

 if (data->soc == SOC_ARCH_EXYNOS5260) {
  tmu_intstat = EXYNOS5260_TMU_REG_INTSTAT;
  tmu_intclear = EXYNOS5260_TMU_REG_INTCLEAR;
 } else if (data->soc == SOC_ARCH_EXYNOS7) {
  tmu_intstat = EXYNOS7_TMU_REG_INTPEND;
  tmu_intclear = EXYNOS7_TMU_REG_INTPEND;
 } else if (data->soc == SOC_ARCH_EXYNOS5433) {
  tmu_intstat = EXYNOS5433_TMU_REG_INTPEND;
  tmu_intclear = EXYNOS5433_TMU_REG_INTPEND;
 } else {
  tmu_intstat = EXYNOS_TMU_REG_INTSTAT;
  tmu_intclear = EXYNOS_TMU_REG_INTCLEAR;
 }

 val_irq = readl(data->base + tmu_intstat);
 writel(val_irq, data->base + tmu_intclear);
}
