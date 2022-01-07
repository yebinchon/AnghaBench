
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_frame_size_enum {scalar_t__ min_width; scalar_t__ max_width; scalar_t__ min_height; scalar_t__ max_height; int code; int which; int pad; int index; } ;
struct TYPE_4__ {scalar_t__ min_width; scalar_t__ max_width; scalar_t__ min_height; scalar_t__ max_height; int step_width; int step_height; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; } ;
struct v4l2_frmsizeenum {TYPE_2__ stepwise; int type; TYPE_1__ discrete; int pixel_format; int index; } ;
struct imx_media_pixfmt {int * codes; } ;
struct file {int dummy; } ;
struct capture_priv {int src_sd; int src_sd_pad; } ;


 int CS_SEL_ANY ;
 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_CONTINUOUS ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_size ;
 struct imx_media_pixfmt* imx_media_find_format (int ,int ,int) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_size_enum*) ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_enum_framesizes(struct file *file, void *fh,
       struct v4l2_frmsizeenum *fsize)
{
 struct capture_priv *priv = video_drvdata(file);
 const struct imx_media_pixfmt *cc;
 struct v4l2_subdev_frame_size_enum fse = {
  .index = fsize->index,
  .pad = priv->src_sd_pad,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 cc = imx_media_find_format(fsize->pixel_format, CS_SEL_ANY, 1);
 if (!cc)
  return -EINVAL;

 fse.code = cc->codes[0];

 ret = v4l2_subdev_call(priv->src_sd, pad, enum_frame_size, ((void*)0), &fse);
 if (ret)
  return ret;

 if (fse.min_width == fse.max_width &&
     fse.min_height == fse.max_height) {
  fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
  fsize->discrete.width = fse.min_width;
  fsize->discrete.height = fse.min_height;
 } else {
  fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
  fsize->stepwise.min_width = fse.min_width;
  fsize->stepwise.max_width = fse.max_width;
  fsize->stepwise.min_height = fse.min_height;
  fsize->stepwise.max_height = fse.max_height;
  fsize->stepwise.step_width = 1;
  fsize->stepwise.step_height = 1;
 }

 return 0;
}
