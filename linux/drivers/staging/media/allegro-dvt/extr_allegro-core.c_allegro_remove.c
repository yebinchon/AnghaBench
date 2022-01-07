
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct allegro_dev {int v4l2_dev; scalar_t__ m2m_dev; int video_dev; } ;


 int allegro_free_fw_codec (struct allegro_dev*) ;
 int allegro_mcu_hw_deinit (struct allegro_dev*) ;
 struct allegro_dev* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (scalar_t__) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int allegro_remove(struct platform_device *pdev)
{
 struct allegro_dev *dev = platform_get_drvdata(pdev);

 video_unregister_device(&dev->video_dev);
 if (dev->m2m_dev)
  v4l2_m2m_release(dev->m2m_dev);
 allegro_mcu_hw_deinit(dev);
 allegro_free_fw_codec(dev);

 v4l2_device_unregister(&dev->v4l2_dev);

 return 0;
}
