
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ hostdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,char*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t mode_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 return scnprintf(buf, PAGE_SIZE, "%s\n",
    sdev->hostdata ? "superpipe" : "legacy");
}
