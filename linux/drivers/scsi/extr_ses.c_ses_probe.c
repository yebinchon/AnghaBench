
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ type; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int KERN_NOTICE ;
 scalar_t__ TYPE_ENCLOSURE ;
 int sdev_printk (int ,struct scsi_device*,char*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int ses_probe(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 int err = -ENODEV;

 if (sdev->type != TYPE_ENCLOSURE)
  goto out;

 err = 0;
 sdev_printk(KERN_NOTICE, sdev, "Attached Enclosure device\n");

 out:
 return err;
}
