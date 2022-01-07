
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int coldboot_seq (int ) ;
 int to_platform_device (struct device*) ;

int apb_ctrl_coldboot(struct device *dev)
{
 return coldboot_seq(to_platform_device(dev));
}
