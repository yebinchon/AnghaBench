
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval {scalar_t__ pad; int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct prp_priv {int lock; int frame_interval; } ;


 int EINVAL ;
 scalar_t__ PRP_NUM_PADS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;

__attribute__((used)) static int prp_g_frame_interval(struct v4l2_subdev *sd,
    struct v4l2_subdev_frame_interval *fi)
{
 struct prp_priv *priv = sd_to_priv(sd);

 if (fi->pad >= PRP_NUM_PADS)
  return -EINVAL;

 mutex_lock(&priv->lock);
 fi->interval = priv->frame_interval;
 mutex_unlock(&priv->lock);

 return 0;
}
