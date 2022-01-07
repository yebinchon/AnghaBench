
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int serial_number; } ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int memcpy (char*,int ,int) ;
 struct myrs_hba* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t serial_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct myrs_hba *cs = shost_priv(shost);
 char serial[17];

 memcpy(serial, cs->ctlr_info->serial_number, 16);
 serial[16] = '\0';
 return snprintf(buf, 16, "%s\n", serial);
}
