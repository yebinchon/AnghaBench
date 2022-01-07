
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct cr_panel {int cr_lcd_device; TYPE_2__* cr_backlight_device; } ;
struct TYPE_3__ {scalar_t__ max_brightness; scalar_t__ brightness; int power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int FB_BLANK_POWERDOWN ;
 int cr_backlight_set_intensity (TYPE_2__*) ;
 int cr_lcd_set_power (int ,int ) ;
 int lpc_dev ;
 int pci_dev_put (int ) ;
 struct cr_panel* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cr_backlight_remove(struct platform_device *pdev)
{
 struct cr_panel *crp = platform_get_drvdata(pdev);

 crp->cr_backlight_device->props.power = FB_BLANK_POWERDOWN;
 crp->cr_backlight_device->props.brightness = 0;
 crp->cr_backlight_device->props.max_brightness = 0;
 cr_backlight_set_intensity(crp->cr_backlight_device);
 cr_lcd_set_power(crp->cr_lcd_device, FB_BLANK_POWERDOWN);
 pci_dev_put(lpc_dev);

 return 0;
}
