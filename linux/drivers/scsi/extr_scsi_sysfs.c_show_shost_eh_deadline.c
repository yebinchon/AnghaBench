
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int eh_deadline; } ;
typedef int ssize_t ;


 int HZ ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,scalar_t__,char*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static ssize_t
show_shost_eh_deadline(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);

 if (shost->eh_deadline == -1)
  return snprintf(buf, strlen("off") + 2, "off\n");
 return sprintf(buf, "%u\n", shost->eh_deadline / HZ);
}
