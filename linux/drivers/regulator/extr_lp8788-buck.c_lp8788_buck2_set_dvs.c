
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_buck2_dvs {int vsel; int * gpio; } ;
struct lp8788_buck {scalar_t__ dvs; } ;
typedef enum lp8788_dvs_state { ____Placeholder_lp8788_dvs_state } lp8788_dvs_state ;


 int DVS_HIGH ;
 int DVS_LOW ;




 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void lp8788_buck2_set_dvs(struct lp8788_buck *buck)
{
 struct lp8788_buck2_dvs *dvs = (struct lp8788_buck2_dvs *)buck->dvs;
 enum lp8788_dvs_state pin1, pin2;

 if (!dvs)
  return;

 switch (dvs->vsel) {
 case 131:
  pin1 = DVS_LOW;
  pin2 = DVS_LOW;
  break;
 case 130:
  pin1 = DVS_HIGH;
  pin2 = DVS_LOW;
  break;
 case 129:
  pin1 = DVS_LOW;
  pin2 = DVS_HIGH;
  break;
 case 128:
  pin1 = DVS_HIGH;
  pin2 = DVS_HIGH;
  break;
 default:
  return;
 }

 if (gpio_is_valid(dvs->gpio[0]))
  gpio_set_value(dvs->gpio[0], pin1);

 if (gpio_is_valid(dvs->gpio[1]))
  gpio_set_value(dvs->gpio[1], pin2);
}
