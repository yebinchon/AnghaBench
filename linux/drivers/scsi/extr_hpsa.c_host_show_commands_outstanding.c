
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int commands_outstanding; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t host_show_commands_outstanding(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ctlr_info *h = shost_to_hba(shost);

 return snprintf(buf, 20, "%d\n",
   atomic_read(&h->commands_outstanding));
}
