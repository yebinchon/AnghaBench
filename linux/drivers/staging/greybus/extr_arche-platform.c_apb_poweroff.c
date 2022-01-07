
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int apb_ctrl_poweroff (struct device*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ usb3613_hub_mode_ctrl (int) ;

__attribute__((used)) static int apb_poweroff(struct device *dev, void *data)
{
 apb_ctrl_poweroff(dev);


 if (usb3613_hub_mode_ctrl(0))
  dev_warn(dev, "failed to control hub device\n");

 return 0;
}
