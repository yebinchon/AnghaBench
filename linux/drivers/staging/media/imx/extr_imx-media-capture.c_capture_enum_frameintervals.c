
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval_enum {int interval; int code; int which; int height; int width; int pad; int index; } ;
struct v4l2_frmivalenum {int discrete; int type; int pixel_format; int height; int width; int index; } ;
struct imx_media_pixfmt {int * codes; } ;
struct file {int dummy; } ;
struct capture_priv {int src_sd; int src_sd_pad; } ;


 int CS_SEL_ANY ;
 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_interval ;
 struct imx_media_pixfmt* imx_media_find_format (int ,int ,int) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_interval_enum*) ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_enum_frameintervals(struct file *file, void *fh,
           struct v4l2_frmivalenum *fival)
{
 struct capture_priv *priv = video_drvdata(file);
 const struct imx_media_pixfmt *cc;
 struct v4l2_subdev_frame_interval_enum fie = {
  .index = fival->index,
  .pad = priv->src_sd_pad,
  .width = fival->width,
  .height = fival->height,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 cc = imx_media_find_format(fival->pixel_format, CS_SEL_ANY, 1);
 if (!cc)
  return -EINVAL;

 fie.code = cc->codes[0];

 ret = v4l2_subdev_call(priv->src_sd, pad, enum_frame_interval,
          ((void*)0), &fie);
 if (ret)
  return ret;

 fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fival->discrete = fie.interval;

 return 0;
}
