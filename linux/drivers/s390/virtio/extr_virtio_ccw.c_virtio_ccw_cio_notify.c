
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_ccw_device {int device_lost; } ;
struct ccw_device {int dev; } ;




 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 struct virtio_ccw_device* dev_get_drvdata (int *) ;

__attribute__((used)) static int virtio_ccw_cio_notify(struct ccw_device *cdev, int event)
{
 int rc;
 struct virtio_ccw_device *vcdev = dev_get_drvdata(&cdev->dev);





 if (!vcdev)
  return NOTIFY_DONE;

 switch (event) {
 case 129:
  vcdev->device_lost = 1;
  rc = NOTIFY_DONE;
  break;
 case 128:
  rc = NOTIFY_OK;
  break;
 default:
  rc = NOTIFY_DONE;
  break;
 }
 return rc;
}
