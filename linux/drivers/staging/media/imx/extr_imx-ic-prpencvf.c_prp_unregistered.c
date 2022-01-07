
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct prp_priv {int ctrl_hdlr; int vdev; } ;


 int imx_media_capture_device_unregister (int ) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static void prp_unregistered(struct v4l2_subdev *sd)
{
 struct prp_priv *priv = sd_to_priv(sd);

 imx_media_capture_device_unregister(priv->vdev);
 v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
}
