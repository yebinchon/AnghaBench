
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int grp_id; } ;
struct prp_priv {int csi_id; int lock; scalar_t__ sink_sd_prpenc; TYPE_2__* src_sd; } ;
struct media_link {int dummy; } ;
struct TYPE_3__ {int entity; } ;
struct imx_ic_priv {TYPE_1__ sd; struct prp_priv* task_priv; } ;
struct TYPE_4__ {int grp_id; } ;


 int EINVAL ;
 int IMX_MEDIA_GRP_ID_IPU_CSI ;


 int IMX_MEDIA_GRP_ID_IPU_VDIC ;
 scalar_t__ IS_ERR (struct v4l2_subdev*) ;
 struct v4l2_subdev* imx_media_pipeline_subdev (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx_ic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_link_validate_default (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int prp_link_validate(struct v4l2_subdev *sd,
        struct media_link *link,
        struct v4l2_subdev_format *source_fmt,
        struct v4l2_subdev_format *sink_fmt)
{
 struct imx_ic_priv *ic_priv = v4l2_get_subdevdata(sd);
 struct prp_priv *priv = ic_priv->task_priv;
 struct v4l2_subdev *csi;
 int ret;

 ret = v4l2_subdev_link_validate_default(sd, link,
      source_fmt, sink_fmt);
 if (ret)
  return ret;

 csi = imx_media_pipeline_subdev(&ic_priv->sd.entity,
     IMX_MEDIA_GRP_ID_IPU_CSI, 1);
 if (IS_ERR(csi))
  csi = ((void*)0);

 mutex_lock(&priv->lock);

 if (priv->src_sd->grp_id & IMX_MEDIA_GRP_ID_IPU_VDIC) {




  if (priv->sink_sd_prpenc) {
   ret = -EINVAL;
   goto out;
  }
 } else {

  if (!csi) {
   ret = -EINVAL;
   goto out;
  }
 }

 if (csi) {
  switch (csi->grp_id) {
  case 129:
   priv->csi_id = 0;
   break;
  case 128:
   priv->csi_id = 1;
   break;
  default:
   ret = -EINVAL;
  }
 } else {
  priv->csi_id = 0;
 }

out:
 mutex_unlock(&priv->lock);
 return ret;
}
