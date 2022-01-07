
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EIO ;
 int ENXIO ;

 int acpi_ec_read (int ,int*) ;
 int fan_rpm_offset ;
 int fan_select_fan1 () ;
 int fan_status_access_mode ;
 int likely (unsigned int*) ;
 int unlikely (int) ;

__attribute__((used)) static int fan_get_speed(unsigned int *speed)
{
 u8 hi, lo;

 switch (fan_status_access_mode) {
 case 128:

  if (unlikely(!fan_select_fan1()))
   return -EIO;
  if (unlikely(!acpi_ec_read(fan_rpm_offset, &lo) ||
        !acpi_ec_read(fan_rpm_offset + 1, &hi)))
   return -EIO;

  if (likely(speed))
   *speed = (hi << 8) | lo;

  break;

 default:
  return -ENXIO;
 }

 return 0;
}
