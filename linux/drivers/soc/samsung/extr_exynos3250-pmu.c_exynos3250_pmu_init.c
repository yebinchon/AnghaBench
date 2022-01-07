
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS3_ARM_COMMON_OPTION ;
 unsigned int EXYNOS3_OPTION_SKIP_DEACTIVATE_ACEACP_IN_PWDN ;
 int S5P_CENTRAL_SEQ_OPTION ;
 int S5P_PS_HOLD_CONTROL ;
 unsigned int S5P_PS_HOLD_EN ;
 unsigned int S5P_PS_HOLD_OUTPUT_HIGH ;
 unsigned int S5P_USE_STANDBY_WFI_ALL ;
 unsigned int pmu_raw_readl (int ) ;
 int pmu_raw_writel (unsigned int,int ) ;

__attribute__((used)) static void exynos3250_pmu_init(void)
{
 unsigned int value;





 value = pmu_raw_readl(EXYNOS3_ARM_COMMON_OPTION);
 value |= EXYNOS3_OPTION_SKIP_DEACTIVATE_ACEACP_IN_PWDN;
 pmu_raw_writel(value, EXYNOS3_ARM_COMMON_OPTION);


 pmu_raw_writel(S5P_USE_STANDBY_WFI_ALL, S5P_CENTRAL_SEQ_OPTION);




 value = pmu_raw_readl(S5P_PS_HOLD_CONTROL);
 value |= S5P_PS_HOLD_OUTPUT_HIGH;
 pmu_raw_writel(value, S5P_PS_HOLD_CONTROL);




 value = pmu_raw_readl(S5P_PS_HOLD_CONTROL);
 value |= S5P_PS_HOLD_EN;
 pmu_raw_writel(value, S5P_PS_HOLD_CONTROL);
}
