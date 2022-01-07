
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct platform_device {int dummy; } ;
struct imx_media_dev {int md; int v4l2_dev; int notifier; } ;
struct imx7_csi {int lock; int ctrl_hdlr; int vdev; struct imx_media_dev* imxmd; } ;


 int imx_media_capture_device_remove (int ) ;
 int imx_media_capture_device_unregister (int ) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int mutex_destroy (int *) ;
 struct v4l2_subdev* platform_get_drvdata (struct platform_device*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx7_csi_remove(struct platform_device *pdev)
{
 struct v4l2_subdev *sd = platform_get_drvdata(pdev);
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 struct imx_media_dev *imxmd = csi->imxmd;

 v4l2_async_notifier_unregister(&imxmd->notifier);
 v4l2_async_notifier_cleanup(&imxmd->notifier);

 media_device_unregister(&imxmd->md);
 v4l2_device_unregister(&imxmd->v4l2_dev);
 media_device_cleanup(&imxmd->md);

 imx_media_capture_device_unregister(csi->vdev);
 imx_media_capture_device_remove(csi->vdev);

 v4l2_async_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&csi->ctrl_hdlr);

 mutex_destroy(&csi->lock);

 return 0;
}
