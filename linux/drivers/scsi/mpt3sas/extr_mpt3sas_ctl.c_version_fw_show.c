
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int Word; } ;
struct TYPE_4__ {TYPE_1__ FWVersion; } ;
struct MPT3SAS_ADAPTER {TYPE_2__ facts; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t
version_fw_show(struct device *cdev, struct device_attribute *attr,
 char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 return snprintf(buf, PAGE_SIZE, "%02d.%02d.%02d.%02d\n",
     (ioc->facts.FWVersion.Word & 0xFF000000) >> 24,
     (ioc->facts.FWVersion.Word & 0x00FF0000) >> 16,
     (ioc->facts.FWVersion.Word & 0x0000FF00) >> 8,
     ioc->facts.FWVersion.Word & 0x000000FF);
}
