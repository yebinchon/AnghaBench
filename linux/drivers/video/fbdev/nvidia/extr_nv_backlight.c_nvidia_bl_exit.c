
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int pci_dev; } ;
struct fb_info {struct backlight_device* bl_dev; } ;
struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;
 struct fb_info* pci_get_drvdata (int ) ;
 int printk (char*) ;

void nvidia_bl_exit(struct nvidia_par *par)
{
 struct fb_info *info = pci_get_drvdata(par->pci_dev);
 struct backlight_device *bd = info->bl_dev;

 backlight_device_unregister(bd);
 printk("nvidia: Backlight unloaded\n");
}
