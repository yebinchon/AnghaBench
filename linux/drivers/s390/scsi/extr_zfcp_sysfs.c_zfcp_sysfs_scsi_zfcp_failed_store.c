
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {int adapter; } ;


 size_t EINVAL ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 TYPE_2__* sdev_to_zfcp (struct scsi_device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 int zfcp_erp_lun_reopen (struct scsi_device*,int ,char*) ;
 int zfcp_erp_set_lun_status (struct scsi_device*,int ) ;
 int zfcp_erp_wait (int ) ;

__attribute__((used)) static ssize_t zfcp_sysfs_scsi_zfcp_failed_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 unsigned long val;

 if (kstrtoul(buf, 0, &val) || val != 0)
  return -EINVAL;

 zfcp_erp_set_lun_status(sdev, ZFCP_STATUS_COMMON_RUNNING);
 zfcp_erp_lun_reopen(sdev, ZFCP_STATUS_COMMON_ERP_FAILED,
       "syufai3");
 zfcp_erp_wait(sdev_to_zfcp(sdev)->port->adapter);

 return count;
}
