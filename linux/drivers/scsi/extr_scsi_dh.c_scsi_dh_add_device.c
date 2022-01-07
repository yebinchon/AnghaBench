
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device_handler {int dummy; } ;
struct scsi_device {int dummy; } ;


 struct scsi_device_handler* __scsi_dh_lookup (char const*) ;
 char* scsi_dh_find_driver (struct scsi_device*) ;
 int scsi_dh_handler_attach (struct scsi_device*,struct scsi_device_handler*) ;

void scsi_dh_add_device(struct scsi_device *sdev)
{
 struct scsi_device_handler *devinfo = ((void*)0);
 const char *drv;

 drv = scsi_dh_find_driver(sdev);
 if (drv)
  devinfo = __scsi_dh_lookup(drv);




 if (devinfo)
  (void)scsi_dh_handler_attach(sdev, devinfo);
}
