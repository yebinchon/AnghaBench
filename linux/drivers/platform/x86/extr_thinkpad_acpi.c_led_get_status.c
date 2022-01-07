
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum led_status_t { ____Placeholder_led_status_t } led_status_t ;


 int EIO ;
 int ENXIO ;

 int TPACPI_LED_BLINK ;
 int TPACPI_LED_OFF ;
 int TPACPI_LED_ON ;
 int acpi_evalf (int ,int*,char*,char*,int) ;
 int ec_handle ;
 int led_supported ;
 int* tpacpi_led_state_cache ;

__attribute__((used)) static int led_get_status(const unsigned int led)
{
 int status;
 enum led_status_t led_s;

 switch (led_supported) {
 case 128:
  if (!acpi_evalf(ec_handle,
    &status, "GLED", "dd", 1 << led))
   return -EIO;
  led_s = (status == 0) ?
    TPACPI_LED_OFF :
    ((status == 1) ?
     TPACPI_LED_ON :
     TPACPI_LED_BLINK);
  tpacpi_led_state_cache[led] = led_s;
  return led_s;
 default:
  return -ENXIO;
 }


}
