
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_device {int dev; int usid; struct spmi_controller* ctrl; } ;
struct spmi_controller {int nr; } ;


 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int ,int) ;
 int dev_name (int *) ;
 int dev_set_name (int *,char*,int ,int ) ;
 int device_add (int *) ;

int spmi_device_add(struct spmi_device *sdev)
{
 struct spmi_controller *ctrl = sdev->ctrl;
 int err;

 dev_set_name(&sdev->dev, "%d-%02x", ctrl->nr, sdev->usid);

 err = device_add(&sdev->dev);
 if (err < 0) {
  dev_err(&sdev->dev, "Can't add %s, status %d\n",
   dev_name(&sdev->dev), err);
  goto err_device_add;
 }

 dev_dbg(&sdev->dev, "device %s registered\n", dev_name(&sdev->dev));

err_device_add:
 return err;
}
