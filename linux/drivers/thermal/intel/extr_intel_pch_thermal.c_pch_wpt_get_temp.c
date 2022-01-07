
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pch_thermal_device {scalar_t__ hw_base; } ;


 scalar_t__ WPT_TEMP ;
 int WPT_TEMP_TSR ;
 int readw (scalar_t__) ;

__attribute__((used)) static int pch_wpt_get_temp(struct pch_thermal_device *ptd, int *temp)
{
 u16 wpt_temp;

 wpt_temp = WPT_TEMP_TSR & readw(ptd->hw_base + WPT_TEMP);


 *temp = (wpt_temp * 1000 / 2 - 50000);

 return 0;
}
