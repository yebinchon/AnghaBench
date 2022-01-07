
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum s3c2410_udc_cmd_e { ____Placeholder_s3c2410_udc_cmd_e } s3c2410_udc_cmd_e ;
struct TYPE_2__ {int pullup_pin_inverted; int pullup_pin; int (* udc_command ) (int) ;} ;




 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int stub1 (int) ;
 TYPE_1__* udc_info ;

__attribute__((used)) static void s3c2410_udc_command(enum s3c2410_udc_cmd_e cmd)
{
 if (!udc_info)
  return;

 if (udc_info->udc_command) {
  udc_info->udc_command(cmd);
 } else if (gpio_is_valid(udc_info->pullup_pin)) {
  int value;

  switch (cmd) {
  case 128:
   value = 1;
   break;
  case 129:
   value = 0;
   break;
  default:
   return;
  }
  value ^= udc_info->pullup_pin_inverted;

  gpio_set_value(udc_info->pullup_pin, value);
 }
}
