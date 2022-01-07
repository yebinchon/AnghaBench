
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int TPACPI_LED_OFF ;
 int TPACPI_LED_ON ;
 int light_set_status (int ) ;

__attribute__((used)) static int light_sysfs_set(struct led_classdev *led_cdev,
   enum led_brightness brightness)
{
 return light_set_status((brightness != LED_OFF) ?
    TPACPI_LED_ON : TPACPI_LED_OFF);
}
