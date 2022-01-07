
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device_handler {int (* attach ) (struct scsi_device*) ;int module; int name; } ;
struct scsi_device {struct scsi_device_handler* handler; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int KERN_ERR ;



 int SCSI_DH_OK ;

 int module_put (int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,int) ;
 int stub1 (struct scsi_device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int scsi_dh_handler_attach(struct scsi_device *sdev,
      struct scsi_device_handler *scsi_dh)
{
 int error, ret = 0;

 if (!try_module_get(scsi_dh->module))
  return -EINVAL;

 error = scsi_dh->attach(sdev);
 if (error != SCSI_DH_OK) {
  switch (error) {
  case 130:
   ret = -ENOMEM;
   break;
  case 128:
   ret = -EAGAIN;
   break;
  case 131:
  case 129:
   ret = -ENODEV;
   break;
  default:
   ret = -EINVAL;
   break;
  }
  if (ret != -ENODEV)
   sdev_printk(KERN_ERR, sdev, "%s: Attach failed (%d)\n",
        scsi_dh->name, error);
  module_put(scsi_dh->module);
 } else
  sdev->handler = scsi_dh;

 return ret;
}
