
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int max_medium_access_timeouts; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int capable (int ) ;
 int kstrtouint (char const*,int,int *) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
max_medium_access_timeouts_store(struct device *dev,
     struct device_attribute *attr, const char *buf,
     size_t count)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 int err;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 err = kstrtouint(buf, 10, &sdkp->max_medium_access_timeouts);

 return err ? err : count;
}
