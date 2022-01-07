
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int pqi_scan_start (struct Scsi_Host*) ;

__attribute__((used)) static ssize_t pqi_host_rescan_store(struct device *dev,
 struct device_attribute *attr, const char *buffer, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);

 pqi_scan_start(shost);

 return count;
}
