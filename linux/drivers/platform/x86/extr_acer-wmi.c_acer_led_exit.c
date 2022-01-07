
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACER_CAP_MAILLED ;
 int LED_OFF ;
 int led_classdev_unregister (int *) ;
 int mail_led ;
 int set_u32 (int ,int ) ;

__attribute__((used)) static void acer_led_exit(void)
{
 set_u32(LED_OFF, ACER_CAP_MAILLED);
 led_classdev_unregister(&mail_led);
}
