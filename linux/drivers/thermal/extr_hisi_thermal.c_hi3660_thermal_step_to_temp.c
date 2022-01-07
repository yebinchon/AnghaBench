
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HI3660_TEMP_BASE ;
 int HI3660_TEMP_STEP ;

__attribute__((used)) static inline int hi3660_thermal_step_to_temp(int step)
{
 return HI3660_TEMP_BASE + step * HI3660_TEMP_STEP;
}
