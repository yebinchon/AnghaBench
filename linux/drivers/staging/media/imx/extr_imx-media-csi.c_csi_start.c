
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int dummy; } ;
struct csi_priv {size_t active_output_pad; scalar_t__ dest; int src_sd; scalar_t__ fim; int sd; int csi; struct v4l2_fract* frame_interval; } ;


 int ENOIOCTLCMD ;
 scalar_t__ IPU_CSI_DEST_IDMAC ;
 int csi_idmac_start (struct csi_priv*) ;
 int csi_idmac_stop (struct csi_priv*) ;
 int csi_setup (struct csi_priv*) ;
 int imx_media_fim_set_stream (scalar_t__,struct v4l2_fract*,int) ;
 int ipu_csi_enable (int ) ;
 int s_stream ;
 int v4l2_err (int *,char*,int) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int csi_start(struct csi_priv *priv)
{
 struct v4l2_fract *output_fi;
 int ret;

 output_fi = &priv->frame_interval[priv->active_output_pad];


 ret = v4l2_subdev_call(priv->src_sd, video, s_stream, 1);
 ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
 if (ret)
  return ret;

 if (priv->dest == IPU_CSI_DEST_IDMAC) {
  ret = csi_idmac_start(priv);
  if (ret)
   goto stop_upstream;
 }

 ret = csi_setup(priv);
 if (ret)
  goto idmac_stop;


 if (priv->fim && priv->dest == IPU_CSI_DEST_IDMAC) {
  ret = imx_media_fim_set_stream(priv->fim, output_fi, 1);
  if (ret)
   goto idmac_stop;
 }

 ret = ipu_csi_enable(priv->csi);
 if (ret) {
  v4l2_err(&priv->sd, "CSI enable error: %d\n", ret);
  goto fim_off;
 }

 return 0;

fim_off:
 if (priv->fim && priv->dest == IPU_CSI_DEST_IDMAC)
  imx_media_fim_set_stream(priv->fim, ((void*)0), 0);
idmac_stop:
 if (priv->dest == IPU_CSI_DEST_IDMAC)
  csi_idmac_stop(priv);
stop_upstream:
 v4l2_subdev_call(priv->src_sd, video, s_stream, 0);
 return ret;
}
