
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {size_t active_input_pad; int lock; struct v4l2_fract* frame_interval; int csi_direct; } ;
struct v4l2_fract {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {int pad; struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int vdic_s_frame_interval(struct v4l2_subdev *sd,
    struct v4l2_subdev_frame_interval *fi)
{
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_fract *input_fi, *output_fi;
 int ret = 0;

 mutex_lock(&priv->lock);

 input_fi = &priv->frame_interval[priv->active_input_pad];
 output_fi = &priv->frame_interval[128];

 switch (fi->pad) {
 case 130:
 case 129:

  if (fi->interval.numerator == 0 ||
      fi->interval.denominator == 0)
   fi->interval = priv->frame_interval[fi->pad];

  *output_fi = fi->interval;
  if (priv->csi_direct)
   output_fi->denominator *= 2;
  break;
 case 128:






  fi->interval = *input_fi;
  if (priv->csi_direct)
   fi->interval.denominator *= 2;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }

 priv->frame_interval[fi->pad] = fi->interval;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
