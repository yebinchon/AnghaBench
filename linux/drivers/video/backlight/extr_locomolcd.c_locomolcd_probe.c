
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct locomo_dev {TYPE_5__ dev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_8__ {int brightness; } ;
struct TYPE_9__ {TYPE_1__ props; } ;


 int BACKLIGHT_RAW ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int LOCOMO_GPIO_FL_VR ;
 int PTR_ERR (TYPE_2__*) ;
 TYPE_2__* backlight_device_register (char*,TYPE_5__*,int *,int *,struct backlight_properties*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int locomo_gpio_set_dir (int ,int ,int ) ;
 int locomobl_data ;
 TYPE_2__* locomolcd_bl_device ;
 struct locomo_dev* locomolcd_dev ;
 int locomolcd_power (int) ;
 int locomolcd_set_intensity (TYPE_2__*) ;
 scalar_t__ machine_is_poodle () ;
 int memset (struct backlight_properties*,int ,int) ;

__attribute__((used)) static int locomolcd_probe(struct locomo_dev *ldev)
{
 struct backlight_properties props;
 unsigned long flags;

 local_irq_save(flags);
 locomolcd_dev = ldev;

 locomo_gpio_set_dir(ldev->dev.parent, LOCOMO_GPIO_FL_VR, 0);






 if (machine_is_poodle())
  locomolcd_power(1);

 local_irq_restore(flags);

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = 4;
 locomolcd_bl_device = backlight_device_register("locomo-bl",
       &ldev->dev, ((void*)0),
       &locomobl_data, &props);

 if (IS_ERR(locomolcd_bl_device))
  return PTR_ERR(locomolcd_bl_device);


 locomolcd_bl_device->props.brightness = 2;
 locomolcd_set_intensity(locomolcd_bl_device);

 return 0;
}
