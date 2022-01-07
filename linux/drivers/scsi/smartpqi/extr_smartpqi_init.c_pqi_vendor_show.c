
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {char* vendor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct pqi_ctrl_info* shost_to_hba (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t pqi_vendor_show(struct device *dev,
 struct device_attribute *attr, char *buffer)
{
 struct Scsi_Host *shost;
 struct pqi_ctrl_info *ctrl_info;

 shost = class_to_shost(dev);
 ctrl_info = shost_to_hba(shost);

 return snprintf(buffer, PAGE_SIZE, "%s\n", ctrl_info->vendor);
}
