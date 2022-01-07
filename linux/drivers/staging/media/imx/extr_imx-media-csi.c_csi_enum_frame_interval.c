
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_fract {int dummy; } ;
struct v4l2_subdev_frame_interval_enum {scalar_t__ pad; int index; int width; int height; struct v4l2_fract interval; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int width; int height; } ;
struct csi_priv {int lock; struct v4l2_fract* frame_interval; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ CSI_NUM_PADS ;
 size_t CSI_SINK_PAD ;
 scalar_t__ CSI_SRC_PAD_IDMAC ;
 int EINVAL ;
 struct v4l2_rect* __csi_get_crop (struct csi_priv*,struct v4l2_subdev_pad_config*,int ) ;
 int csi_apply_skip_interval (int *,struct v4l2_fract*) ;
 int * csi_skip ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi_enum_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_frame_interval_enum *fie)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_fract *input_fi;
 struct v4l2_rect *crop;
 int ret = 0;

 if (fie->pad >= CSI_NUM_PADS ||
     fie->index >= (fie->pad != CSI_SRC_PAD_IDMAC ?
      1 : ARRAY_SIZE(csi_skip)))
  return -EINVAL;

 mutex_lock(&priv->lock);

 input_fi = &priv->frame_interval[CSI_SINK_PAD];
 crop = __csi_get_crop(priv, cfg, fie->which);

 if ((fie->width != crop->width && fie->width != crop->width / 2) ||
     (fie->height != crop->height && fie->height != crop->height / 2)) {
  ret = -EINVAL;
  goto out;
 }

 fie->interval = *input_fi;

 if (fie->pad == CSI_SRC_PAD_IDMAC)
  csi_apply_skip_interval(&csi_skip[fie->index],
     &fie->interval);

out:
 mutex_unlock(&priv->lock);
 return ret;
}
