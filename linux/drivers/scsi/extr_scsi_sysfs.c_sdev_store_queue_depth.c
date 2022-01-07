
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_host_template {int (* change_queue_depth ) (struct scsi_device*,int) ;} ;
struct scsi_device {int queue_depth; int max_queue_depth; TYPE_1__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int can_queue; struct scsi_host_template* hostt; } ;


 int EINVAL ;
 int simple_strtoul (char const*,int *,int ) ;
 int stub1 (struct scsi_device*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_store_queue_depth(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 int depth, retval;
 struct scsi_device *sdev = to_scsi_device(dev);
 struct scsi_host_template *sht = sdev->host->hostt;

 if (!sht->change_queue_depth)
  return -EINVAL;

 depth = simple_strtoul(buf, ((void*)0), 0);

 if (depth < 1 || depth > sdev->host->can_queue)
  return -EINVAL;

 retval = sht->change_queue_depth(sdev, depth);
 if (retval < 0)
  return retval;

 sdev->max_queue_depth = sdev->queue_depth;

 return count;
}
