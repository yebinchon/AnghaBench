
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval {size_t pad; int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct csi_priv {int lock; int * frame_interval; } ;


 size_t CSI_NUM_PADS ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi_g_frame_interval(struct v4l2_subdev *sd,
    struct v4l2_subdev_frame_interval *fi)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);

 if (fi->pad >= CSI_NUM_PADS)
  return -EINVAL;

 mutex_lock(&priv->lock);

 fi->interval = priv->frame_interval[fi->pad];

 mutex_unlock(&priv->lock);

 return 0;
}
