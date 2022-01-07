
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frmsizeenum {scalar_t__ index; scalar_t__ pixel_format; int stepwise; int type; } ;
struct hantro_fmt {scalar_t__ codec_mode; int frmsize; } ;
struct hantro_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ HANTRO_MODE_NONE ;
 int V4L2_FRMSIZE_TYPE_STEPWISE ;
 struct hantro_ctx* fh_to_ctx (void*) ;
 struct hantro_fmt* hantro_find_format (struct hantro_fmt const*,unsigned int,scalar_t__) ;
 struct hantro_fmt* hantro_get_formats (struct hantro_ctx*,unsigned int*) ;
 int vpu_debug (int ,char*,scalar_t__) ;

__attribute__((used)) static int vidioc_enum_framesizes(struct file *file, void *priv,
      struct v4l2_frmsizeenum *fsize)
{
 struct hantro_ctx *ctx = fh_to_ctx(priv);
 const struct hantro_fmt *formats, *fmt;
 unsigned int num_fmts;

 if (fsize->index != 0) {
  vpu_debug(0, "invalid frame size index (expected 0, got %d)\n",
     fsize->index);
  return -EINVAL;
 }

 formats = hantro_get_formats(ctx, &num_fmts);
 fmt = hantro_find_format(formats, num_fmts, fsize->pixel_format);
 if (!fmt) {
  vpu_debug(0, "unsupported bitstream format (%08x)\n",
     fsize->pixel_format);
  return -EINVAL;
 }


 if (fmt->codec_mode == HANTRO_MODE_NONE)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
 fsize->stepwise = fmt->frmsize;

 return 0;
}
