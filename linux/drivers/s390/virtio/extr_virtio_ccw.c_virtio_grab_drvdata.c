
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_ccw_device {int going_away; } ;
struct ccw_device {int dev; } ;


 struct virtio_ccw_device* dev_get_drvdata (int *) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static struct virtio_ccw_device *virtio_grab_drvdata(struct ccw_device *cdev)
{
 unsigned long flags;
 struct virtio_ccw_device *vcdev;

 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 vcdev = dev_get_drvdata(&cdev->dev);
 if (!vcdev || vcdev->going_away) {
  spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
  return ((void*)0);
 }
 vcdev->going_away = 1;
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
 return vcdev;
}
