
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pixelformat; int height; int width; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cedrus_ctx {TYPE_2__ dst_fmt; } ;


 int V4L2_PIX_FMT_SUNXI_TILED_NV12 ;
 struct cedrus_ctx* cedrus_file2ctx (struct file*) ;
 int cedrus_prepare_format (TYPE_2__*) ;

__attribute__((used)) static int cedrus_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cedrus_ctx *ctx = cedrus_file2ctx(file);


 if (!ctx->dst_fmt.width || !ctx->dst_fmt.height) {
  f->fmt.pix.pixelformat = V4L2_PIX_FMT_SUNXI_TILED_NV12;
  cedrus_prepare_format(&f->fmt.pix);

  return 0;
 }

 f->fmt.pix = ctx->dst_fmt;

 return 0;
}
