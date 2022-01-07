
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_wcnss {int pmu_cfg; scalar_t__ use_48mhz_xo; } ;


 int WCNSS_PMU_GC_BUS_MUX_SEL_TOP ;
 int WCNSS_PMU_IRIS_RESET ;
 int WCNSS_PMU_IRIS_RESET_STS ;
 int WCNSS_PMU_IRIS_XO_CFG ;
 int WCNSS_PMU_IRIS_XO_CFG_STS ;
 int WCNSS_PMU_IRIS_XO_EN ;
 int WCNSS_PMU_XO_MODE_19p2 ;
 int WCNSS_PMU_XO_MODE_48 ;
 int WCNSS_PMU_XO_MODE_MASK ;
 int cpu_relax () ;
 int msleep (int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void wcnss_configure_iris(struct qcom_wcnss *wcnss)
{
 u32 val;


 writel(0, wcnss->pmu_cfg);

 val = WCNSS_PMU_GC_BUS_MUX_SEL_TOP | WCNSS_PMU_IRIS_XO_EN;
 writel(val, wcnss->pmu_cfg);


 val &= ~WCNSS_PMU_XO_MODE_MASK;
 if (wcnss->use_48mhz_xo)
  val |= WCNSS_PMU_XO_MODE_48 << 1;
 else
  val |= WCNSS_PMU_XO_MODE_19p2 << 1;
 writel(val, wcnss->pmu_cfg);


 val |= WCNSS_PMU_IRIS_RESET;
 writel(val, wcnss->pmu_cfg);


 while (readl(wcnss->pmu_cfg) & WCNSS_PMU_IRIS_RESET_STS)
  cpu_relax();


 val &= ~WCNSS_PMU_IRIS_RESET;
 writel(val, wcnss->pmu_cfg);


 val |= WCNSS_PMU_IRIS_XO_CFG;
 writel(val, wcnss->pmu_cfg);


 while (readl(wcnss->pmu_cfg) & WCNSS_PMU_IRIS_XO_CFG_STS)
  cpu_relax();


 val &= ~WCNSS_PMU_GC_BUS_MUX_SEL_TOP;
 val &= ~WCNSS_PMU_IRIS_XO_CFG;
 writel(val, wcnss->pmu_cfg);


 msleep(20);
}
