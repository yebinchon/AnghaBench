
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {size_t zeroing_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;
 char** zeroing_mode ;

__attribute__((used)) static ssize_t
zeroing_mode_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);

 return sprintf(buf, "%s\n", zeroing_mode[sdkp->zeroing_mode]);
}
