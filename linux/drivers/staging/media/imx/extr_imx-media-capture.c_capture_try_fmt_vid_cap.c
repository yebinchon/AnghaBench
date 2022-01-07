
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_format {int which; int pad; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct capture_priv {int src_sd; int src_sd_pad; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int __capture_try_fmt_vid_cap (struct capture_priv*,struct v4l2_subdev_format*,struct v4l2_format*,int *,int *) ;
 int get_fmt ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;
 struct capture_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int capture_try_fmt_vid_cap(struct file *file, void *fh,
       struct v4l2_format *f)
{
 struct capture_priv *priv = video_drvdata(file);
 struct v4l2_subdev_format fmt_src;
 int ret;

 fmt_src.pad = priv->src_sd_pad;
 fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 ret = v4l2_subdev_call(priv->src_sd, pad, get_fmt, ((void*)0), &fmt_src);
 if (ret)
  return ret;

 return __capture_try_fmt_vid_cap(priv, &fmt_src, f, ((void*)0), ((void*)0));
}
