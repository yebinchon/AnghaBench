
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int queue_max_hw_sectors (int ) ;
 int sprintf (char*,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t max_sectors_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 return sprintf(buf, "%u\n", queue_max_hw_sectors(sdev->request_queue));
}
