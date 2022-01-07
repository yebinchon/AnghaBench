
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct locomo_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ power; scalar_t__ brightness; } ;
struct TYPE_6__ {TYPE_1__ props; } ;


 int backlight_device_unregister (TYPE_2__*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_2__* locomolcd_bl_device ;
 int * locomolcd_dev ;
 int locomolcd_set_intensity (TYPE_2__*) ;

__attribute__((used)) static int locomolcd_remove(struct locomo_dev *dev)
{
 unsigned long flags;

 locomolcd_bl_device->props.brightness = 0;
 locomolcd_bl_device->props.power = 0;
 locomolcd_set_intensity(locomolcd_bl_device);

 backlight_device_unregister(locomolcd_bl_device);
 local_irq_save(flags);
 locomolcd_dev = ((void*)0);
 local_irq_restore(flags);
 return 0;
}
