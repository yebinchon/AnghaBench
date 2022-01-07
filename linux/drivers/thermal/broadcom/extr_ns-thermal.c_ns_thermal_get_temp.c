
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ns_thermal {scalar_t__ pvtmon; int tz; } ;


 scalar_t__ PVTMON_CONTROL0 ;
 int PVTMON_CONTROL0_SEL_MASK ;
 int PVTMON_CONTROL0_SEL_TEMP_MONITOR ;
 scalar_t__ PVTMON_STATUS ;
 int readl (scalar_t__) ;
 int thermal_zone_get_offset (int ) ;
 int thermal_zone_get_slope (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ns_thermal_get_temp(void *data, int *temp)
{
 struct ns_thermal *ns_thermal = data;
 int offset = thermal_zone_get_offset(ns_thermal->tz);
 int slope = thermal_zone_get_slope(ns_thermal->tz);
 u32 val;

 val = readl(ns_thermal->pvtmon + PVTMON_CONTROL0);
 if ((val & PVTMON_CONTROL0_SEL_MASK) != PVTMON_CONTROL0_SEL_TEMP_MONITOR) {

  val &= ~PVTMON_CONTROL0_SEL_MASK;


  val |= PVTMON_CONTROL0_SEL_TEMP_MONITOR;

  writel(val, ns_thermal->pvtmon + PVTMON_CONTROL0);
 }

 val = readl(ns_thermal->pvtmon + PVTMON_STATUS);
 *temp = slope * val + offset;

 return 0;
}
