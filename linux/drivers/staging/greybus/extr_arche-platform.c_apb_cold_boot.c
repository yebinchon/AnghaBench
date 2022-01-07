
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int apb_ctrl_coldboot (struct device*) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static int apb_cold_boot(struct device *dev, void *data)
{
 int ret;

 ret = apb_ctrl_coldboot(dev);
 if (ret)
  dev_warn(dev, "failed to coldboot\n");


 return 0;
}
