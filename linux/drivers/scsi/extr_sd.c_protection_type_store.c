
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {unsigned int protection_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 unsigned int T10_PI_TYPE3_PROTECTION ;
 int capable (int ) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
protection_type_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 unsigned int val;
 int err;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 err = kstrtouint(buf, 10, &val);

 if (err)
  return err;

 if (val <= T10_PI_TYPE3_PROTECTION)
  sdkp->protection_type = val;

 return count;
}
