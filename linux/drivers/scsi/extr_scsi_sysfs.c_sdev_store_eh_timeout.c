
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {unsigned int eh_timeout; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 unsigned int HZ ;
 int capable (int ) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_store_eh_timeout(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct scsi_device *sdev;
 unsigned int eh_timeout;
 int err;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 sdev = to_scsi_device(dev);
 err = kstrtouint(buf, 10, &eh_timeout);
 if (err)
  return err;
 sdev->eh_timeout = eh_timeout * HZ;

 return count;
}
