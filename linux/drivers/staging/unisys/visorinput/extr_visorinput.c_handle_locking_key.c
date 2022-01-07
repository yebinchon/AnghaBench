
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int led; } ;





 int LED_CAPSL ;
 int LED_NUML ;
 int LED_SCROLLL ;
 int __change_bit (int,int ) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void handle_locking_key(struct input_dev *visorinput_dev, int keycode,
          int desired_state)
{
 int led;

 switch (keycode) {
 case 130:
  led = LED_CAPSL;
  break;
 case 128:
  led = LED_SCROLLL;
  break;
 case 129:
  led = LED_NUML;
  break;
 default:
  led = -1;
  return;
 }
 if (test_bit(led, visorinput_dev->led) != desired_state) {
  input_report_key(visorinput_dev, keycode, 1);
  input_sync(visorinput_dev);
  input_report_key(visorinput_dev, keycode, 0);
  input_sync(visorinput_dev);
  __change_bit(led, visorinput_dev->led);
 }
}
