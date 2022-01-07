
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (scalar_t__,int ) ;
 scalar_t__ HI6220_TEMP_BASE ;
 int HI6220_TEMP_STEP ;

__attribute__((used)) static inline int hi6220_thermal_temp_to_step(int temp)
{
 return DIV_ROUND_UP(temp - HI6220_TEMP_BASE, HI6220_TEMP_STEP);
}
