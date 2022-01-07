
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int scsi_host_busy (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t
show_host_busy(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 return snprintf(buf, 20, "%d\n", scsi_host_busy(shost));
}
