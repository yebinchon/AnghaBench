
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct spmi_device*) ;
 struct spmi_device* to_spmi_device (struct device*) ;

__attribute__((used)) static void spmi_dev_release(struct device *dev)
{
 struct spmi_device *sdev = to_spmi_device(dev);
 kfree(sdev);
}
