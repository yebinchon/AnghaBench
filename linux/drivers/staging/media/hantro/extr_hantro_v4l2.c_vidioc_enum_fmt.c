
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {unsigned int index; int pixelformat; } ;
struct hantro_fmt {scalar_t__ codec_mode; int fourcc; } ;
struct hantro_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ HANTRO_MODE_NONE ;
 struct hantro_ctx* fh_to_ctx (void*) ;
 struct hantro_fmt* hantro_get_formats (struct hantro_ctx*,unsigned int*) ;
 int hantro_is_encoder_ctx (struct hantro_ctx*) ;

__attribute__((used)) static int vidioc_enum_fmt(struct file *file, void *priv,
      struct v4l2_fmtdesc *f, bool capture)

{
 struct hantro_ctx *ctx = fh_to_ctx(priv);
 const struct hantro_fmt *fmt, *formats;
 unsigned int num_fmts, i, j = 0;
 bool skip_mode_none;
 skip_mode_none = capture == hantro_is_encoder_ctx(ctx);

 formats = hantro_get_formats(ctx, &num_fmts);
 for (i = 0; i < num_fmts; i++) {
  bool mode_none = formats[i].codec_mode == HANTRO_MODE_NONE;

  if (skip_mode_none == mode_none)
   continue;
  if (j == f->index) {
   fmt = &formats[i];
   f->pixelformat = fmt->fourcc;
   return 0;
  }
  ++j;
 }
 return -EINVAL;
}
