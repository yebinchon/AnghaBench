
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct platform_device {int dummy; } ;
struct csi_priv {int vdev; int lock; int ctrl_hdlr; } ;


 int imx_media_capture_device_remove (int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct v4l2_subdev* platform_get_drvdata (struct platform_device*) ;
 struct csi_priv* sd_to_dev (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int imx_csi_remove(struct platform_device *pdev)
{
 struct v4l2_subdev *sd = platform_get_drvdata(pdev);
 struct csi_priv *priv = sd_to_dev(sd);

 v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 mutex_destroy(&priv->lock);
 imx_media_capture_device_remove(priv->vdev);
 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);

 return 0;
}
