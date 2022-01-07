
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct exynos_tmu_data {scalar_t__ base; } ;


 unsigned int EXYNOS5433_THD_TEMP_FALL3_0 ;
 unsigned int EXYNOS5433_THD_TEMP_FALL7_4 ;
 int readl (scalar_t__) ;
 unsigned int temp_to_code (struct exynos_tmu_data*,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void exynos5433_tmu_set_trip_hyst(struct exynos_tmu_data *data,
      int trip, u8 temp, u8 hyst)
{
 unsigned int reg_off, j;
 u32 th;

 if (trip > 3) {
  reg_off = EXYNOS5433_THD_TEMP_FALL7_4;
  j = trip - 4;
 } else {
  reg_off = EXYNOS5433_THD_TEMP_FALL3_0;
  j = trip;
 }

 th = readl(data->base + reg_off);
 th &= ~(0xff << j * 8);
 th |= (temp_to_code(data, temp - hyst) << j * 8);
 writel(th, data->base + reg_off);
}
