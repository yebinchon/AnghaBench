
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct thermal_trip {int temperature; } ;
struct exynos_tmu_data {scalar_t__ base; int tzd; } ;


 scalar_t__ EXYNOS4210_TMU_REG_THRESHOLD_TEMP ;
 scalar_t__ EXYNOS4210_TMU_REG_TRIG_LEVEL0 ;
 int MCELSIUS ;
 struct thermal_trip* of_thermal_get_trip_points (int ) ;
 int temp_to_code (struct exynos_tmu_data*,int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void exynos4210_tmu_set_trip_temp(struct exynos_tmu_data *data,
      int trip, u8 temp)
{
 const struct thermal_trip * const trips =
  of_thermal_get_trip_points(data->tzd);
 u8 ref, th_code;

 ref = trips[0].temperature / MCELSIUS;

 if (trip == 0) {
  th_code = temp_to_code(data, ref);
  writeb(th_code, data->base + EXYNOS4210_TMU_REG_THRESHOLD_TEMP);
 }

 temp -= ref;
 writeb(temp, data->base + EXYNOS4210_TMU_REG_TRIG_LEVEL0 + trip * 4);
}
