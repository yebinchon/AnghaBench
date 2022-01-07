
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_tmu_data {scalar_t__ base; } ;


 int EXYNOS7_TMU_TEMP_MASK ;
 scalar_t__ EXYNOS_TMU_REG_CURRENT_TEMP ;
 int readw (scalar_t__) ;

__attribute__((used)) static int exynos7_tmu_read(struct exynos_tmu_data *data)
{
 return readw(data->base + EXYNOS_TMU_REG_CURRENT_TEMP) &
  EXYNOS7_TMU_TEMP_MASK;
}
