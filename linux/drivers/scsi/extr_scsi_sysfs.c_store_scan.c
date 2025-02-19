
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int scsi_scan (struct Scsi_Host*,char const*) ;

__attribute__((used)) static ssize_t
store_scan(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 int res;

 res = scsi_scan(shost, buf);
 if (res == 0)
  res = count;
 return res;
}
