
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_media_video_dev {int dummy; } ;
struct capture_priv {int ctrl_hdlr; } ;


 struct capture_priv* to_capture_priv (struct imx_media_video_dev*) ;
 int v4l2_ctrl_handler_free (int *) ;

void imx_media_capture_device_remove(struct imx_media_video_dev *vdev)
{
 struct capture_priv *priv = to_capture_priv(vdev);

 v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
}
