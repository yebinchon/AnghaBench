
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (scalar_t__,int ) ;
 scalar_t__ HI3660_TEMP_BASE ;
 int HI3660_TEMP_STEP ;

__attribute__((used)) static inline int hi3660_thermal_temp_to_step(int temp)
{
 return DIV_ROUND_UP(temp - HI3660_TEMP_BASE, HI3660_TEMP_STEP);
}
