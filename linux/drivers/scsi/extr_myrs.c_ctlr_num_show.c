
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myrs_hba {TYPE_1__* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int host_no; } ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 struct myrs_hba* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t ctlr_num_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct myrs_hba *cs = shost_priv(shost);

 return snprintf(buf, 20, "%d\n", cs->host->host_no);
}
