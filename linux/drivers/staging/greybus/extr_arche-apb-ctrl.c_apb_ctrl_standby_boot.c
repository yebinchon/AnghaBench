
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int standby_boot_seq (int ) ;
 int to_platform_device (struct device*) ;

int apb_ctrl_standby_boot(struct device *dev)
{
 return standby_boot_seq(to_platform_device(dev));
}
