
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int code; } ;
struct v4l2_subdev_format {TYPE_1__ format; int which; int pad; } ;
struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct imx_media_pixfmt {scalar_t__ cs; int fourcc; } ;
struct file {int dummy; } ;
struct capture_priv {int src_sd; int src_sd_pad; } ;


 int CS_SEL_ANY ;
 int CS_SEL_RGB ;
 int CS_SEL_YUV ;
 int EINVAL ;
 scalar_t__ IPUV3_COLORSPACE_YUV ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 scalar_t__ WARN_ON (int) ;
 int get_fmt ;
 int imx_media_enum_format (int *,int ,int ) ;
 struct imx_media_pixfmt* imx_media_find_ipu_format (int ,int ) ;
 struct imx_media_pixfmt* imx_media_find_mbus_format (int ,int ,int) ;
 int pad ;
 int v4l2_err (int ,char*) ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_enum_fmt_vid_cap(struct file *file, void *fh,
        struct v4l2_fmtdesc *f)
{
 struct capture_priv *priv = video_drvdata(file);
 const struct imx_media_pixfmt *cc_src;
 struct v4l2_subdev_format fmt_src;
 u32 fourcc;
 int ret;

 fmt_src.pad = priv->src_sd_pad;
 fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 ret = v4l2_subdev_call(priv->src_sd, pad, get_fmt, ((void*)0), &fmt_src);
 if (ret) {
  v4l2_err(priv->src_sd, "failed to get src_sd format\n");
  return ret;
 }

 cc_src = imx_media_find_ipu_format(fmt_src.format.code, CS_SEL_ANY);
 if (cc_src) {
  u32 cs_sel = (cc_src->cs == IPUV3_COLORSPACE_YUV) ?
   CS_SEL_YUV : CS_SEL_RGB;

  ret = imx_media_enum_format(&fourcc, f->index, cs_sel);
  if (ret)
   return ret;
 } else {
  cc_src = imx_media_find_mbus_format(fmt_src.format.code,
          CS_SEL_ANY, 1);
  if (WARN_ON(!cc_src))
   return -EINVAL;

  if (f->index != 0)
   return -EINVAL;
  fourcc = cc_src->fourcc;
 }

 f->pixelformat = fourcc;

 return 0;
}
