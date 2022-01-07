
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_6__ {int ngpio; } ;
struct TYPE_5__ {TYPE_1__* vdev; TYPE_3__ gpio_chip; int * active_gpios; } ;
struct TYPE_4__ {int reg_lock; } ;


 int gpiochip_remove (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__ viafb_gpio_config ;
 int viafb_gpio_disable (int ) ;
 int viafb_gpio_pm_hooks ;
 int viafb_pm_unregister (int *) ;

__attribute__((used)) static int viafb_gpio_remove(struct platform_device *platdev)
{
 unsigned long flags;
 int i;
 if (viafb_gpio_config.gpio_chip.ngpio > 0) {
  gpiochip_remove(&viafb_gpio_config.gpio_chip);
 }



 spin_lock_irqsave(&viafb_gpio_config.vdev->reg_lock, flags);
 for (i = 0; i < viafb_gpio_config.gpio_chip.ngpio; i += 2)
  viafb_gpio_disable(viafb_gpio_config.active_gpios[i]);
 viafb_gpio_config.gpio_chip.ngpio = 0;
 spin_unlock_irqrestore(&viafb_gpio_config.vdev->reg_lock, flags);
 return 0;
}
