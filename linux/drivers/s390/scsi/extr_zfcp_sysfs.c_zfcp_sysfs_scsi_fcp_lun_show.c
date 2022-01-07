
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 int zfcp_scsi_dev_lun (struct scsi_device*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_scsi_fcp_lun_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 return sprintf(buf, "0x%016llx\n", zfcp_scsi_dev_lun(sdev));
}
