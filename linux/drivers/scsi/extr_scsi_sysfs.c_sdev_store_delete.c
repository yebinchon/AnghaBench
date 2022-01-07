
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct device_attribute {int attr; } ;
struct device {int kobj; } ;
typedef size_t ssize_t ;


 size_t ENODEV ;
 int WARN_ON_ONCE (int) ;
 int device_remove_file (struct device*,struct device_attribute*) ;
 scalar_t__ scsi_device_get (struct scsi_device*) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;
 struct kernfs_node* sysfs_break_active_protection (int *,int *) ;
 int sysfs_unbreak_active_protection (struct kernfs_node*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_store_delete(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct kernfs_node *kn;
 struct scsi_device *sdev = to_scsi_device(dev);





 if (scsi_device_get(sdev))
  return -ENODEV;

 kn = sysfs_break_active_protection(&dev->kobj, &attr->attr);
 WARN_ON_ONCE(!kn);
 device_remove_file(dev, attr);
 scsi_remove_device(sdev);
 if (kn)
  sysfs_unbreak_active_protection(kn);
 scsi_device_put(sdev);
 return count;
}
