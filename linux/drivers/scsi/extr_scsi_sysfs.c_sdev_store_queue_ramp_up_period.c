
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_ramp_up_period; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtouint (char const*,int,unsigned int*) ;
 int msecs_to_jiffies (unsigned int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_store_queue_ramp_up_period(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 unsigned int period;

 if (kstrtouint(buf, 10, &period))
  return -EINVAL;

 sdev->queue_ramp_up_period = msecs_to_jiffies(period);
 return count;
}
