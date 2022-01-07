
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_charger {int dev; } ;


 int AB8500_CHARGER ;
 int AB8500_LED_INDICATOR_PWM_CTRL ;
 int AB8500_LED_INDICATOR_PWM_DUTY ;
 int LED_INDICATOR_PWM_DIS ;
 int LED_INDICATOR_PWM_DUTY_252_256 ;
 int LED_INDICATOR_PWM_ENA ;
 int LED_IND_CUR_5MA ;
 int abx500_set_register_interruptible (int ,int ,int ,int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int ab8500_charger_led_en(struct ab8500_charger *di, int on)
{
 int ret;

 if (on) {

  ret = abx500_set_register_interruptible(di->dev, AB8500_CHARGER,
   AB8500_LED_INDICATOR_PWM_CTRL,
   (LED_IND_CUR_5MA | LED_INDICATOR_PWM_ENA));
  if (ret) {
   dev_err(di->dev, "Power ON LED failed\n");
   return ret;
  }

  ret = abx500_set_register_interruptible(di->dev, AB8500_CHARGER,
   AB8500_LED_INDICATOR_PWM_DUTY,
   LED_INDICATOR_PWM_DUTY_252_256);
  if (ret) {
   dev_err(di->dev, "Set LED PWM duty cycle failed\n");
   return ret;
  }
 } else {

  ret = abx500_set_register_interruptible(di->dev, AB8500_CHARGER,
   AB8500_LED_INDICATOR_PWM_CTRL,
   LED_INDICATOR_PWM_DIS);
  if (ret) {
   dev_err(di->dev, "Power-off LED failed\n");
   return ret;
  }
 }

 return ret;
}
