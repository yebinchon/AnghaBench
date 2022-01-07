
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS5_AUTO_WDTRESET_DISABLE ;
 int EXYNOS5_MASK_WDTRESET_REQUEST ;
 unsigned int EXYNOS5_SYS_WDTRESET ;
 unsigned int pmu_raw_readl (int ) ;
 int pmu_raw_writel (unsigned int,int ) ;

__attribute__((used)) static void exynos5250_pmu_init(void)
{
 unsigned int value;




 value = pmu_raw_readl(EXYNOS5_AUTO_WDTRESET_DISABLE);
 value &= ~EXYNOS5_SYS_WDTRESET;
 pmu_raw_writel(value, EXYNOS5_AUTO_WDTRESET_DISABLE);

 value = pmu_raw_readl(EXYNOS5_MASK_WDTRESET_REQUEST);
 value &= ~EXYNOS5_SYS_WDTRESET;
 pmu_raw_writel(value, EXYNOS5_MASK_WDTRESET_REQUEST);
}
