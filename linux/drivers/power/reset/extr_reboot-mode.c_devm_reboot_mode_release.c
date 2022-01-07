
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reboot_mode_driver {int dummy; } ;
struct device {int dummy; } ;


 int reboot_mode_unregister (struct reboot_mode_driver*) ;

__attribute__((used)) static void devm_reboot_mode_release(struct device *dev, void *res)
{
 reboot_mode_unregister(*(struct reboot_mode_driver **)res);
}
