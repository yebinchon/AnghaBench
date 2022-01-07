
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ pad; scalar_t__ index; scalar_t__ code; int min_width; int min_height; int max_width; int max_height; int which; } ;
struct TYPE_2__ {scalar_t__ code; int width; int height; } ;
struct v4l2_subdev_format {scalar_t__ pad; TYPE_1__ format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct prp_priv {int lock; } ;
struct imx_media_pixfmt {int dummy; } ;


 int EINVAL ;
 scalar_t__ PRPENCVF_NUM_PADS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prp_try_fmt (struct prp_priv*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct imx_media_pixfmt const**) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;

__attribute__((used)) static int prp_enum_frame_size(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_frame_size_enum *fse)
{
 struct prp_priv *priv = sd_to_priv(sd);
 struct v4l2_subdev_format format = {};
 const struct imx_media_pixfmt *cc;
 int ret = 0;

 if (fse->pad >= PRPENCVF_NUM_PADS || fse->index != 0)
  return -EINVAL;

 mutex_lock(&priv->lock);

 format.pad = fse->pad;
 format.which = fse->which;
 format.format.code = fse->code;
 format.format.width = 1;
 format.format.height = 1;
 prp_try_fmt(priv, cfg, &format, &cc);
 fse->min_width = format.format.width;
 fse->min_height = format.format.height;

 if (format.format.code != fse->code) {
  ret = -EINVAL;
  goto out;
 }

 format.format.code = fse->code;
 format.format.width = -1;
 format.format.height = -1;
 prp_try_fmt(priv, cfg, &format, &cc);
 fse->max_width = format.format.width;
 fse->max_height = format.format.height;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
