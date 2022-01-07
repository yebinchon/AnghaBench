
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format_mplane {int height; int width; } ;
struct hantro_fmt {int fourcc; } ;
struct hantro_ctx {struct v4l2_pix_format_mplane src_fmt; struct v4l2_pix_format_mplane dst_fmt; struct hantro_fmt const* vpu_dst_fmt; struct hantro_fmt const* vpu_src_fmt; } ;


 struct hantro_fmt* hantro_get_default_fmt (struct hantro_fmt const*,unsigned int,int) ;
 struct hantro_fmt* hantro_get_formats (struct hantro_ctx*,unsigned int*) ;
 scalar_t__ hantro_is_encoder_ctx (struct hantro_ctx*) ;
 int hantro_reset_fmt (struct v4l2_pix_format_mplane*,struct hantro_fmt const*) ;
 int v4l2_fill_pixfmt_mp (struct v4l2_pix_format_mplane*,int ,int ,int ) ;

__attribute__((used)) static void
hantro_reset_raw_fmt(struct hantro_ctx *ctx)
{
 const struct hantro_fmt *raw_vpu_fmt, *formats;
 struct v4l2_pix_format_mplane *raw_fmt, *encoded_fmt;
 unsigned int num_fmts;

 formats = hantro_get_formats(ctx, &num_fmts);
 raw_vpu_fmt = hantro_get_default_fmt(formats, num_fmts, 0);

 if (hantro_is_encoder_ctx(ctx)) {
  ctx->vpu_src_fmt = raw_vpu_fmt;
  raw_fmt = &ctx->src_fmt;
  encoded_fmt = &ctx->dst_fmt;
 } else {
  ctx->vpu_dst_fmt = raw_vpu_fmt;
  raw_fmt = &ctx->dst_fmt;
  encoded_fmt = &ctx->src_fmt;
 }

 hantro_reset_fmt(raw_fmt, raw_vpu_fmt);
 v4l2_fill_pixfmt_mp(raw_fmt, raw_vpu_fmt->fourcc,
       encoded_fmt->width,
       encoded_fmt->height);
}
