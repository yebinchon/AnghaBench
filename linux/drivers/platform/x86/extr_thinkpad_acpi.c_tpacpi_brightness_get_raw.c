
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EIO ;
 int ENXIO ;



 int TP_EC_BACKLIGHT ;
 int acpi_ec_read (int ,int*) ;
 int brightness_mode ;
 int tpacpi_brightness_nvram_get () ;
 int unlikely (int) ;

__attribute__((used)) static int tpacpi_brightness_get_raw(int *status)
{
 u8 lec = 0;

 switch (brightness_mode) {
 case 128:
  *status = tpacpi_brightness_nvram_get();
  return 0;
 case 130:
 case 129:
  if (unlikely(!acpi_ec_read(TP_EC_BACKLIGHT, &lec)))
   return -EIO;
  *status = lec;
  return 0;
 default:
  return -ENXIO;
 }
}
