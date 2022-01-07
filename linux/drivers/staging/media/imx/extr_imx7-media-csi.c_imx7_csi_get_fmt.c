
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct imx7_csi {int lock; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* imx7_csi_get_format (struct imx7_csi*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx7_csi_get_fmt(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *sdformat)
{
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *fmt;
 int ret = 0;

 mutex_lock(&csi->lock);

 fmt = imx7_csi_get_format(csi, cfg, sdformat->pad, sdformat->which);
 if (!fmt) {
  ret = -EINVAL;
  goto out_unlock;
 }

 sdformat->format = *fmt;

out_unlock:
 mutex_unlock(&csi->lock);

 return ret;
}
