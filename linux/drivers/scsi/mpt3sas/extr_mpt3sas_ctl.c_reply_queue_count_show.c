
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int IOCCapabilities; } ;
struct MPT3SAS_ADAPTER {int reply_queue_count; scalar_t__ msix_enable; TYPE_1__ facts; } ;
typedef int ssize_t ;


 int MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
reply_queue_count_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 u8 reply_queue_count;
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 if ((ioc->facts.IOCCapabilities &
     MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX) && ioc->msix_enable)
  reply_queue_count = ioc->reply_queue_count;
 else
  reply_queue_count = 1;

 return snprintf(buf, PAGE_SIZE, "%d\n", reply_queue_count);
}
