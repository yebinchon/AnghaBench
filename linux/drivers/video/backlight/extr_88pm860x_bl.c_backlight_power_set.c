
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {int dummy; } ;


 int EINVAL ;
 int WLED1_DUTY ;
 int WLED2_DUTY ;
 int WLED3_DUTY ;
 int pm8606_osc_disable (struct pm860x_chip*,int ) ;
 int pm8606_osc_enable (struct pm860x_chip*,int ) ;

__attribute__((used)) static int backlight_power_set(struct pm860x_chip *chip, int port,
  int on)
{
 int ret = -EINVAL;

 switch (port) {
 case 0:
  ret = on ? pm8606_osc_enable(chip, WLED1_DUTY) :
   pm8606_osc_disable(chip, WLED1_DUTY);
  break;
 case 1:
  ret = on ? pm8606_osc_enable(chip, WLED2_DUTY) :
   pm8606_osc_disable(chip, WLED2_DUTY);
  break;
 case 2:
  ret = on ? pm8606_osc_enable(chip, WLED3_DUTY) :
   pm8606_osc_disable(chip, WLED3_DUTY);
  break;
 }
 return ret;
}
