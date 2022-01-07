
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int status; } ;


 unsigned int ZFCP_STATUS_COMMON_ERP_FAILED ;
 unsigned int atomic_read (int *) ;
 TYPE_1__* sdev_to_zfcp (struct scsi_device*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t zfcp_sysfs_scsi_zfcp_failed_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 unsigned int status = atomic_read(&sdev_to_zfcp(sdev)->status);
 unsigned int failed = status & ZFCP_STATUS_COMMON_ERP_FAILED ? 1 : 0;

 return sprintf(buf, "%d\n", failed);
}
