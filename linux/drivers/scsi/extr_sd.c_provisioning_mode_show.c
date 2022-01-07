
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {size_t provisioning_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** lbp_mode ;
 int sprintf (char*,char*,char*) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
provisioning_mode_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);

 return sprintf(buf, "%s\n", lbp_mode[sdkp->provisioning_mode]);
}
