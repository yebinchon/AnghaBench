
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zone_device {int tj_max; int cpu; } ;
struct thermal_zone_device {struct zone_device* devdata; } ;


 int EINVAL ;
 int MAX_NUMBER_OF_TRIPS ;
 int MSR_IA32_PACKAGE_THERM_INTERRUPT ;
 int THERM_INT_THRESHOLD0_ENABLE ;
 int THERM_INT_THRESHOLD1_ENABLE ;
 int THERM_MASK_THRESHOLD0 ;
 int THERM_MASK_THRESHOLD1 ;
 int THERM_SHIFT_THRESHOLD0 ;
 int THERM_SHIFT_THRESHOLD1 ;
 int rdmsr_on_cpu (int ,int ,int*,int*) ;
 int wrmsr_on_cpu (int ,int ,int,int) ;

__attribute__((used)) static int
sys_set_trip_temp(struct thermal_zone_device *tzd, int trip, int temp)
{
 struct zone_device *zonedev = tzd->devdata;
 u32 l, h, mask, shift, intr;
 int ret;

 if (trip >= MAX_NUMBER_OF_TRIPS || temp >= zonedev->tj_max)
  return -EINVAL;

 ret = rdmsr_on_cpu(zonedev->cpu, MSR_IA32_PACKAGE_THERM_INTERRUPT,
      &l, &h);
 if (ret < 0)
  return ret;

 if (trip) {
  mask = THERM_MASK_THRESHOLD1;
  shift = THERM_SHIFT_THRESHOLD1;
  intr = THERM_INT_THRESHOLD1_ENABLE;
 } else {
  mask = THERM_MASK_THRESHOLD0;
  shift = THERM_SHIFT_THRESHOLD0;
  intr = THERM_INT_THRESHOLD0_ENABLE;
 }
 l &= ~mask;




 if (!temp) {
  l &= ~intr;
 } else {
  l |= (zonedev->tj_max - temp)/1000 << shift;
  l |= intr;
 }

 return wrmsr_on_cpu(zonedev->cpu, MSR_IA32_PACKAGE_THERM_INTERRUPT,
   l, h);
}
