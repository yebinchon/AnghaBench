
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int PAGE_SIZE ;
 size_t scsi_vpd_lun_id (struct scsi_device*,char*,int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_show_wwid(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 ssize_t count;

 count = scsi_vpd_lun_id(sdev, buf, PAGE_SIZE);
 if (count > 0) {
  buf[count] = '\n';
  count++;
 }
 return count;
}
