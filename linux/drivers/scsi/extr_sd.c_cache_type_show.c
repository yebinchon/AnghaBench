
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int RCD; int WCE; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** sd_cache_types ;
 int sprintf (char*,char*,char*) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
cache_type_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 int ct = sdkp->RCD + 2*sdkp->WCE;

 return sprintf(buf, "%s\n", sd_cache_types[ct]);
}
