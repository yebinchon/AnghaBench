
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ctrl {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int PAGE_SIZE ;
 struct nvme_ctrl* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t nvme_sysfs_show_transport(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct nvme_ctrl *ctrl = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%s\n", ctrl->ops->name);
}
