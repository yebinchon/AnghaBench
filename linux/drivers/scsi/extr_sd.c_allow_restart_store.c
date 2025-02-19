
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; int allow_restart; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_ZBC ;
 int capable (int ) ;
 scalar_t__ kstrtobool (char const*,int*) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
allow_restart_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 bool v;
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 struct scsi_device *sdp = sdkp->device;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (sdp->type != TYPE_DISK && sdp->type != TYPE_ZBC)
  return -EINVAL;

 if (kstrtobool(buf, &v))
  return -EINVAL;

 sdp->allow_restart = v;

 return count;
}
