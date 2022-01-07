
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_media_dev {int md; int v4l2_dev; int m2m_vdev; int notifier; } ;


 int imx_media_csc_scaler_device_unregister (int ) ;
 int imx_media_unregister_ipu_internal_subdevs (struct imx_media_dev*) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 scalar_t__ platform_get_drvdata (struct platform_device*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int *,char*) ;

__attribute__((used)) static int imx_media_remove(struct platform_device *pdev)
{
 struct imx_media_dev *imxmd =
  (struct imx_media_dev *)platform_get_drvdata(pdev);

 v4l2_info(&imxmd->v4l2_dev, "Removing imx-media\n");

 v4l2_async_notifier_unregister(&imxmd->notifier);
 imx_media_unregister_ipu_internal_subdevs(imxmd);
 v4l2_async_notifier_cleanup(&imxmd->notifier);
 imx_media_csc_scaler_device_unregister(imxmd->m2m_vdev);
 media_device_unregister(&imxmd->md);
 v4l2_device_unregister(&imxmd->v4l2_dev);
 media_device_cleanup(&imxmd->md);

 return 0;
}
