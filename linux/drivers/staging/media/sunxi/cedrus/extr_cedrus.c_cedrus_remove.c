
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int devnode; } ;
struct cedrus_dev {int v4l2_dev; int vfd; int m2m_dev; TYPE_1__ mdev; } ;


 int cedrus_hw_remove (struct cedrus_dev*) ;
 int media_device_cleanup (TYPE_1__*) ;
 int media_device_unregister (TYPE_1__*) ;
 scalar_t__ media_devnode_is_registered (int ) ;
 struct cedrus_dev* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (int ) ;
 int v4l2_m2m_unregister_media_controller (int ) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int cedrus_remove(struct platform_device *pdev)
{
 struct cedrus_dev *dev = platform_get_drvdata(pdev);

 if (media_devnode_is_registered(dev->mdev.devnode)) {
  media_device_unregister(&dev->mdev);
  v4l2_m2m_unregister_media_controller(dev->m2m_dev);
  media_device_cleanup(&dev->mdev);
 }

 v4l2_m2m_release(dev->m2m_dev);
 video_unregister_device(&dev->vfd);
 v4l2_device_unregister(&dev->v4l2_dev);

 cedrus_hw_remove(dev);

 return 0;
}
