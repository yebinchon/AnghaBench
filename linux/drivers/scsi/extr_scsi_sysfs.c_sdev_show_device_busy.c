
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int device_busy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int snprintf (char*,int,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
sdev_show_device_busy(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 return snprintf(buf, 20, "%d\n", atomic_read(&sdev->device_busy));
}
