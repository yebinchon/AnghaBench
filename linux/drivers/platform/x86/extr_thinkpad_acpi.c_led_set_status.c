
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum led_status_t { ____Placeholder_led_status_t } led_status_t ;


 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int EPERM ;

 int const TPACPI_LED_BLINK ;
 int TPACPI_LED_EC_HLBL ;
 int TPACPI_LED_EC_HLCL ;
 int TPACPI_LED_EC_HLMS ;

 unsigned int const TPACPI_LED_NUMLEDS ;
 int const TPACPI_LED_OFF ;

 int acpi_evalf (int ,int *,int *,char*,unsigned int const,unsigned int const) ;
 int ec_write (int ,int) ;
 int led_handle ;
 int led_supported ;
 int tpacpi_is_led_restricted (unsigned int const) ;
 int* tpacpi_led_state_cache ;
 int unlikely (int) ;

__attribute__((used)) static int led_set_status(const unsigned int led,
     const enum led_status_t ledstatus)
{

 static const unsigned int led_sled_arg1[] = { 0, 1, 3 };
 static const unsigned int led_led_arg1[] = { 0, 0x80, 0xc0 };

 int rc = 0;

 switch (led_supported) {
 case 130:

  if (unlikely(led > 7))
   return -EINVAL;
  if (unlikely(tpacpi_is_led_restricted(led)))
   return -EPERM;
  if (!acpi_evalf(led_handle, ((void*)0), ((void*)0), "vdd",
    (1 << led), led_sled_arg1[ledstatus]))
   return -EIO;
  break;
 case 128:

  if (unlikely(led > 7))
   return -EINVAL;
  if (unlikely(tpacpi_is_led_restricted(led)))
   return -EPERM;
  rc = ec_write(TPACPI_LED_EC_HLMS, (1 << led));
  if (rc >= 0)
   rc = ec_write(TPACPI_LED_EC_HLBL,
          (ledstatus == TPACPI_LED_BLINK) << led);
  if (rc >= 0)
   rc = ec_write(TPACPI_LED_EC_HLCL,
          (ledstatus != TPACPI_LED_OFF) << led);
  break;
 case 129:

  if (unlikely(led >= TPACPI_LED_NUMLEDS))
   return -EINVAL;
  if (unlikely(tpacpi_is_led_restricted(led)))
   return -EPERM;
  if (!acpi_evalf(led_handle, ((void*)0), ((void*)0), "vdd",
    led, led_led_arg1[ledstatus]))
   return -EIO;
  break;
 default:
  return -ENXIO;
 }

 if (!rc)
  tpacpi_led_state_cache[led] = ledstatus;

 return rc;
}
