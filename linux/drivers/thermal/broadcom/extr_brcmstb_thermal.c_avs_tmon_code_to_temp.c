
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thermal_zone_device {int dummy; } ;


 int AVS_TMON_TEMP_MASK ;
 int avs_tmon_get_coeffs (struct thermal_zone_device*,int*,int*) ;

__attribute__((used)) static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
     u32 code)
{
 const int val = code & AVS_TMON_TEMP_MASK;
 int slope, offset;

 avs_tmon_get_coeffs(tz, &slope, &offset);

 return slope * val + offset;
}
