
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reboot_mode_driver {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_reboot_mode_match ;
 int devm_reboot_mode_release ;
 int devres_release (struct device*,int ,int ,struct reboot_mode_driver*) ;

void devm_reboot_mode_unregister(struct device *dev,
     struct reboot_mode_driver *reboot)
{
 WARN_ON(devres_release(dev,
          devm_reboot_mode_release,
          devm_reboot_mode_match, reboot));
}
