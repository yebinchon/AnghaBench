
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sys_powerdown { ____Placeholder_sys_powerdown } sys_powerdown ;


 unsigned int ARRAY_SIZE (int *) ;
 int EXYNOS5_ARM_COMMON_OPTION ;
 unsigned int EXYNOS5_OPTION_USE_STANDBYWFE ;
 unsigned int EXYNOS5_OPTION_USE_STANDBYWFI ;
 unsigned int EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN ;
 unsigned int EXYNOS5_USE_SC_COUNTER ;
 unsigned int EXYNOS5_USE_SC_FEEDBACK ;
 int * exynos5_list_both_cnt_feed ;
 int * exynos5_list_disable_wfi_wfe ;
 unsigned int pmu_raw_readl (int ) ;
 int pmu_raw_writel (unsigned int,int ) ;

__attribute__((used)) static void exynos5_powerdown_conf(enum sys_powerdown mode)
{
 unsigned int i;
 unsigned int tmp;




 for (i = 0; i < ARRAY_SIZE(exynos5_list_both_cnt_feed); i++) {
  tmp = pmu_raw_readl(exynos5_list_both_cnt_feed[i]);
  tmp |= (EXYNOS5_USE_SC_FEEDBACK |
   EXYNOS5_USE_SC_COUNTER);
  pmu_raw_writel(tmp, exynos5_list_both_cnt_feed[i]);
 }




 tmp = pmu_raw_readl(EXYNOS5_ARM_COMMON_OPTION);
 tmp |= EXYNOS5_SKIP_DEACTIVATE_ACEACP_IN_PWDN;
 pmu_raw_writel(tmp, EXYNOS5_ARM_COMMON_OPTION);




 for (i = 0; i < ARRAY_SIZE(exynos5_list_disable_wfi_wfe); i++) {
  tmp = pmu_raw_readl(exynos5_list_disable_wfi_wfe[i]);
  tmp &= ~(EXYNOS5_OPTION_USE_STANDBYWFE |
    EXYNOS5_OPTION_USE_STANDBYWFI);
  pmu_raw_writel(tmp, exynos5_list_disable_wfi_wfe[i]);
 }
}
