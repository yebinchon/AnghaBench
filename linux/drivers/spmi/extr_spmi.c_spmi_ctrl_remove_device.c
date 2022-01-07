
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_device {int dummy; } ;
struct device {int * type; } ;


 int spmi_dev_type ;
 int spmi_device_remove (struct spmi_device*) ;
 struct spmi_device* to_spmi_device (struct device*) ;

__attribute__((used)) static int spmi_ctrl_remove_device(struct device *dev, void *data)
{
 struct spmi_device *spmidev = to_spmi_device(dev);
 if (dev->type == &spmi_dev_type)
  spmi_device_remove(spmidev);
 return 0;
}
