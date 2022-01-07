
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa2xx_udc_mach_info {int (* udc_command ) (int ) ;int gpio_pullup; int gpio_pullup_inverted; } ;
struct TYPE_2__ {struct pxa2xx_udc_mach_info* mach; } ;


 int PXA2XX_UDC_CMD_CONNECT ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int stub1 (int ) ;
 TYPE_1__* the_controller ;

__attribute__((used)) static void pullup_on(void)
{
 struct pxa2xx_udc_mach_info *mach = the_controller->mach;
 int on_level = !mach->gpio_pullup_inverted;

 if (gpio_is_valid(mach->gpio_pullup))
  gpio_set_value(mach->gpio_pullup, on_level);
 else if (mach->udc_command)
  mach->udc_command(PXA2XX_UDC_CMD_CONNECT);
}
