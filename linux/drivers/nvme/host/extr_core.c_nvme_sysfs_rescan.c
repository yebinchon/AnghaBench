
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct nvme_ctrl* dev_get_drvdata (struct device*) ;
 int nvme_queue_scan (struct nvme_ctrl*) ;

__attribute__((used)) static ssize_t nvme_sysfs_rescan(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct nvme_ctrl *ctrl = dev_get_drvdata(dev);

 nvme_queue_scan(ctrl);
 return count;
}
