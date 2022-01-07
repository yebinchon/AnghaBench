
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct exynos_tmu_data {scalar_t__ cal_type; int temp_error1; int temp_error2; } ;


 int EXYNOS_FIRST_POINT_TRIM ;
 int EXYNOS_SECOND_POINT_TRIM ;
 scalar_t__ TYPE_ONE_POINT_TRIMMING ;

__attribute__((used)) static int temp_to_code(struct exynos_tmu_data *data, u8 temp)
{
 if (data->cal_type == TYPE_ONE_POINT_TRIMMING)
  return temp + data->temp_error1 - EXYNOS_FIRST_POINT_TRIM;

 return (temp - EXYNOS_FIRST_POINT_TRIM) *
  (data->temp_error2 - data->temp_error1) /
  (EXYNOS_SECOND_POINT_TRIM - EXYNOS_FIRST_POINT_TRIM) +
  data->temp_error1;
}
