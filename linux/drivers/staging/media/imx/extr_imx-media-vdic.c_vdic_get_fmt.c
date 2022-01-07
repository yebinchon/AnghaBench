
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {int lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int VDIC_NUM_PADS ;
 struct v4l2_mbus_framefmt* __vdic_get_fmt (struct vdic_priv*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int vdic_get_fmt(struct v4l2_subdev *sd,
   struct v4l2_subdev_pad_config *cfg,
   struct v4l2_subdev_format *sdformat)
{
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *fmt;
 int ret = 0;

 if (sdformat->pad >= VDIC_NUM_PADS)
  return -EINVAL;

 mutex_lock(&priv->lock);

 fmt = __vdic_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
 if (!fmt) {
  ret = -EINVAL;
  goto out;
 }

 sdformat->format = *fmt;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
