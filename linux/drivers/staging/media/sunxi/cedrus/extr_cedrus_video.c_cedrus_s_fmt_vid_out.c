
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct cedrus_ctx {TYPE_2__ dst_fmt; TYPE_3__ src_fmt; TYPE_1__ fh; } ;


 int EBUSY ;
 struct cedrus_ctx* cedrus_file2ctx (struct file*) ;
 int cedrus_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;

__attribute__((used)) static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct cedrus_ctx *ctx = cedrus_file2ctx(file);
 struct vb2_queue *vq;
 int ret;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (vb2_is_busy(vq))
  return -EBUSY;

 ret = cedrus_try_fmt_vid_out(file, priv, f);
 if (ret)
  return ret;

 ctx->src_fmt = f->fmt.pix;


 ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
 ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
 ctx->dst_fmt.ycbcr_enc = f->fmt.pix.ycbcr_enc;
 ctx->dst_fmt.quantization = f->fmt.pix.quantization;

 return 0;
}
