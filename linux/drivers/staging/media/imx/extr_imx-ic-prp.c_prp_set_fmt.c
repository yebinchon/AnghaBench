
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int code; int height; int width; } ;
struct v4l2_subdev_format {int pad; struct v4l2_mbus_framefmt format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct prp_priv {scalar_t__ stream_count; int lock; } ;
struct imx_media_pixfmt {int * codes; } ;


 int CS_SEL_ANY ;
 int EBUSY ;
 int EINVAL ;
 int H_ALIGN ;
 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 int PRP_NUM_PADS ;



 int S_ALIGN ;
 int V4L2_FIELD_ANY ;
 int V4L2_FIELD_NONE ;
 int W_ALIGN ;
 struct v4l2_mbus_framefmt* __prp_get_fmt (struct prp_priv*,struct v4l2_subdev_pad_config*,int,int ) ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;
 struct imx_media_pixfmt* imx_media_find_ipu_format (int ,int ) ;
 int imx_media_try_colorimetry (struct v4l2_mbus_framefmt*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int ,int ,int ,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int prp_set_fmt(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *sdformat)
{
 struct prp_priv *priv = sd_to_priv(sd);
 struct v4l2_mbus_framefmt *fmt, *infmt;
 const struct imx_media_pixfmt *cc;
 int ret = 0;
 u32 code;

 if (sdformat->pad >= PRP_NUM_PADS)
  return -EINVAL;

 mutex_lock(&priv->lock);

 if (priv->stream_count > 0) {
  ret = -EBUSY;
  goto out;
 }

 infmt = __prp_get_fmt(priv, cfg, 130, sdformat->which);

 switch (sdformat->pad) {
 case 130:
  v4l_bound_align_image(&sdformat->format.width, MIN_W, MAX_W,
          W_ALIGN, &sdformat->format.height,
          MIN_H, MAX_H, H_ALIGN, S_ALIGN);

  cc = imx_media_find_ipu_format(sdformat->format.code,
            CS_SEL_ANY);
  if (!cc) {
   imx_media_enum_ipu_format(&code, 0, CS_SEL_ANY);
   cc = imx_media_find_ipu_format(code, CS_SEL_ANY);
   sdformat->format.code = cc->codes[0];
  }

  if (sdformat->format.field == V4L2_FIELD_ANY)
   sdformat->format.field = V4L2_FIELD_NONE;
  break;
 case 129:
 case 128:

  sdformat->format = *infmt;
  break;
 }

 imx_media_try_colorimetry(&sdformat->format, 1);

 fmt = __prp_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
 *fmt = sdformat->format;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
