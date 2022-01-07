
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsens_sensor {int offset; int tzd; } ;


 int CAL_MDEGC ;
 int thermal_zone_get_slope (int ) ;

__attribute__((used)) static inline int code_to_mdegC(u32 adc_code, const struct tsens_sensor *s)
{
 int slope, offset;

 slope = thermal_zone_get_slope(s->tzd);
 offset = CAL_MDEGC - slope * s->offset;

 return adc_code * slope + offset;
}
