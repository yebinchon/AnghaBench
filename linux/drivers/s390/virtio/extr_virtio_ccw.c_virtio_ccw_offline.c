
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_ccw_device {int vdev; scalar_t__ device_lost; } ;
struct ccw_device {int dev; } ;


 int dev_set_drvdata (int *,int *) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int unregister_virtio_device (int *) ;
 int virtio_break_device (int *) ;
 struct virtio_ccw_device* virtio_grab_drvdata (struct ccw_device*) ;

__attribute__((used)) static int virtio_ccw_offline(struct ccw_device *cdev)
{
 unsigned long flags;
 struct virtio_ccw_device *vcdev = virtio_grab_drvdata(cdev);

 if (!vcdev)
  return 0;
 if (vcdev->device_lost)
  virtio_break_device(&vcdev->vdev);
 unregister_virtio_device(&vcdev->vdev);
 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 dev_set_drvdata(&cdev->dev, ((void*)0));
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
 return 0;
}
