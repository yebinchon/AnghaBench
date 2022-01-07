
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ pad; int index; int min_width; int max_width; int min_height; int max_height; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int width; int height; } ;
struct csi_priv {int lock; } ;


 scalar_t__ CSI_NUM_PADS ;
 scalar_t__ CSI_SINK_PAD ;
 int EINVAL ;
 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 struct v4l2_rect* __csi_get_crop (struct csi_priv*,struct v4l2_subdev_pad_config*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi_enum_frame_size(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_frame_size_enum *fse)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_rect *crop;
 int ret = 0;

 if (fse->pad >= CSI_NUM_PADS ||
     fse->index > (fse->pad == CSI_SINK_PAD ? 0 : 3))
  return -EINVAL;

 mutex_lock(&priv->lock);

 if (fse->pad == CSI_SINK_PAD) {
  fse->min_width = MIN_W;
  fse->max_width = MAX_W;
  fse->min_height = MIN_H;
  fse->max_height = MAX_H;
 } else {
  crop = __csi_get_crop(priv, cfg, fse->which);

  fse->min_width = fse->index & 1 ?
   crop->width / 2 : crop->width;
  fse->max_width = fse->min_width;
  fse->min_height = fse->index & 2 ?
   crop->height / 2 : crop->height;
  fse->max_height = fse->min_height;
 }

 mutex_unlock(&priv->lock);
 return ret;
}
