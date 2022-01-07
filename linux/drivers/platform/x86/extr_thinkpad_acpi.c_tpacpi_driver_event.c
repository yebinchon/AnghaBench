
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_4__ {scalar_t__ kbdlight; } ;
struct TYPE_3__ {int led_classdev; } ;




 unsigned int const TP_HKEY_EV_KBD_LIGHT ;



 scalar_t__ alsa_card ;
 scalar_t__ ibm_backlight_device ;
 int kbdlight_brightness ;
 int kbdlight_mutex ;
 int kbdlight_sysfs_get (int *) ;
 int led_classdev_notify_brightness_hw_changed (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__ tp_features ;
 int tpacpi_brightness_notify_change () ;
 TYPE_1__ tpacpi_led_kbdlight ;
 int volume_alsa_notify_change () ;

__attribute__((used)) static void tpacpi_driver_event(const unsigned int hkey_event)
{
 if (ibm_backlight_device) {
  switch (hkey_event) {
  case 131:
  case 132:
   tpacpi_brightness_notify_change();
  }
 }
 if (alsa_card) {
  switch (hkey_event) {
  case 128:
  case 130:
  case 129:
   volume_alsa_notify_change();
  }
 }
 if (tp_features.kbdlight && hkey_event == TP_HKEY_EV_KBD_LIGHT) {
  enum led_brightness brightness;

  mutex_lock(&kbdlight_mutex);





  brightness = kbdlight_sysfs_get(((void*)0));
  if (kbdlight_brightness != brightness) {
   kbdlight_brightness = brightness;
   led_classdev_notify_brightness_hw_changed(
    &tpacpi_led_kbdlight.led_classdev, brightness);
  }

  mutex_unlock(&kbdlight_mutex);
 }
}
