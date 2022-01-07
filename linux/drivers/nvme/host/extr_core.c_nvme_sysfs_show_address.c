
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_address ) (struct nvme_ctrl*,char*,int ) ;} ;


 int PAGE_SIZE ;
 struct nvme_ctrl* dev_get_drvdata (struct device*) ;
 int stub1 (struct nvme_ctrl*,char*,int ) ;

__attribute__((used)) static ssize_t nvme_sysfs_show_address(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct nvme_ctrl *ctrl = dev_get_drvdata(dev);

 return ctrl->ops->get_address(ctrl, buf, PAGE_SIZE);
}
