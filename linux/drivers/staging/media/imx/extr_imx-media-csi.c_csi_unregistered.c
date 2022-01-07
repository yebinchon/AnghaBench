
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct csi_priv {scalar_t__ csi; scalar_t__ fim; int vdev; } ;


 int imx_media_capture_device_unregister (int ) ;
 int imx_media_fim_free (scalar_t__) ;
 int ipu_csi_put (scalar_t__) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void csi_unregistered(struct v4l2_subdev *sd)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);

 imx_media_capture_device_unregister(priv->vdev);

 if (priv->fim)
  imx_media_fim_free(priv->fim);

 if (priv->csi)
  ipu_csi_put(priv->csi);
}
