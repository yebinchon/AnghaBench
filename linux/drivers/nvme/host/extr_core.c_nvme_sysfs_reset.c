
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nvme_ctrl* dev_get_drvdata (struct device*) ;
 int nvme_reset_ctrl_sync (struct nvme_ctrl*) ;

__attribute__((used)) static ssize_t nvme_sysfs_reset(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
 int ret;

 ret = nvme_reset_ctrl_sync(ctrl);
 if (ret < 0)
  return ret;
 return count;
}
