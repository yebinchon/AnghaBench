
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct exynos_tmu_data {scalar_t__ base; } ;


 scalar_t__ EXYNOS_TMU_REG_TRIMINFO ;
 struct exynos_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int readl (scalar_t__) ;
 int sanitize_temp_error (struct exynos_tmu_data*,int ) ;

__attribute__((used)) static void exynos4210_tmu_initialize(struct platform_device *pdev)
{
 struct exynos_tmu_data *data = platform_get_drvdata(pdev);

 sanitize_temp_error(data, readl(data->base + EXYNOS_TMU_REG_TRIMINFO));
}
