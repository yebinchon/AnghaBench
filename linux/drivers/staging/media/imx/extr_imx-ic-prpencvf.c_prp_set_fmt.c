
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {size_t pad; int which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct prp_priv {scalar_t__ stream_count; int lock; struct imx_media_pixfmt const** cc; } ;
struct imx_media_pixfmt {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 size_t PRPENCVF_NUM_PADS ;
 size_t PRPENCVF_SINK_PAD ;
 size_t PRPENCVF_SRC_PAD ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_mbus_framefmt* __prp_get_fmt (struct prp_priv*,struct v4l2_subdev_pad_config*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prp_try_fmt (struct prp_priv*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct imx_media_pixfmt const**) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;

__attribute__((used)) static int prp_set_fmt(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *sdformat)
{
 struct prp_priv *priv = sd_to_priv(sd);
 const struct imx_media_pixfmt *cc;
 struct v4l2_mbus_framefmt *fmt;
 int ret = 0;

 if (sdformat->pad >= PRPENCVF_NUM_PADS)
  return -EINVAL;

 mutex_lock(&priv->lock);

 if (priv->stream_count > 0) {
  ret = -EBUSY;
  goto out;
 }

 prp_try_fmt(priv, cfg, sdformat, &cc);

 fmt = __prp_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
 *fmt = sdformat->format;


 if (sdformat->pad == PRPENCVF_SINK_PAD) {
  const struct imx_media_pixfmt *outcc;
  struct v4l2_mbus_framefmt *outfmt;
  struct v4l2_subdev_format format;

  format.pad = PRPENCVF_SRC_PAD;
  format.which = sdformat->which;
  format.format = sdformat->format;
  prp_try_fmt(priv, cfg, &format, &outcc);

  outfmt = __prp_get_fmt(priv, cfg, PRPENCVF_SRC_PAD,
           sdformat->which);
  *outfmt = format.format;
  if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
   priv->cc[PRPENCVF_SRC_PAD] = outcc;
 }

 if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  priv->cc[sdformat->pad] = cc;

out:
 mutex_unlock(&priv->lock);
 return ret;
}
