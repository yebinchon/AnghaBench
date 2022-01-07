
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct prp_priv {int lock; } ;


 int EINVAL ;
 int PRP_NUM_PADS ;
 struct v4l2_mbus_framefmt* __prp_get_fmt (struct prp_priv*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;

__attribute__((used)) static int prp_get_fmt(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *sdformat)
{
 struct prp_priv *priv = sd_to_priv(sd);
 struct v4l2_mbus_framefmt *fmt;
 int ret = 0;

 if (sdformat->pad >= PRP_NUM_PADS)
  return -EINVAL;

 mutex_lock(&priv->lock);

 fmt = __prp_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
 if (!fmt) {
  ret = -EINVAL;
  goto out;
 }

 sdformat->format = *fmt;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
