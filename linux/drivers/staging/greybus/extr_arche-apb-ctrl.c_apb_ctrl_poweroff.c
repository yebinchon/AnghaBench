
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int poweroff_seq (int ) ;
 int to_platform_device (struct device*) ;

void apb_ctrl_poweroff(struct device *dev)
{
 poweroff_seq(to_platform_device(dev));
}
