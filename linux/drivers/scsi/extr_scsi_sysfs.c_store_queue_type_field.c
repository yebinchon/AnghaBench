
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int tagged_supported; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int KERN_INFO ;
 int sdev_printk (int ,struct scsi_device*,char*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
store_queue_type_field(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 if (!sdev->tagged_supported)
  return -EINVAL;

 sdev_printk(KERN_INFO, sdev,
      "ignoring write to deprecated queue_type attribute");
 return count;
}
