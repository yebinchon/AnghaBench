
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int KERN_INFO ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;

__attribute__((used)) static inline void megasas_remove_scsi_device(struct scsi_device *sdev)
{
 sdev_printk(KERN_INFO, sdev, "SCSI device is removed\n");
 scsi_remove_device(sdev);
 scsi_device_put(sdev);
}
