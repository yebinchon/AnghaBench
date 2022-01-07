
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
struct TYPE_4__ {TYPE_1__ NvdataVersionDefault; } ;
struct MPT3SAS_ADAPTER {TYPE_2__ iounit_pg0; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int le32_to_cpu (int ) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
version_nvdata_default_show(struct device *cdev, struct device_attribute
 *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 return snprintf(buf, PAGE_SIZE, "%08xh\n",
     le32_to_cpu(ioc->iounit_pg0.NvdataVersionDefault.Word));
}
