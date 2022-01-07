
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct hantro_func {scalar_t__ id; } ;
struct hantro_dev {int m2m_dev; TYPE_1__* variant; } ;
struct TYPE_7__ {int * ctrl_handler; void* m2m_ctx; } ;
struct hantro_ctx {TYPE_2__ fh; int ctrl_handler; int buf_finish; struct hantro_dev* dev; } ;
struct file {TYPE_2__* private_data; } ;
struct TYPE_6__ {int codec; } ;


 int ENODEV ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int HANTRO_DECODERS ;
 int HANTRO_ENCODERS ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ MEDIA_ENT_F_PROC_VIDEO_DECODER ;
 scalar_t__ MEDIA_ENT_F_PROC_VIDEO_ENCODER ;
 int PTR_ERR (void*) ;
 int hantro_ctrls_setup (struct hantro_dev*,struct hantro_ctx*,int) ;
 int hantro_dec_buf_finish ;
 int hantro_enc_buf_finish ;
 int hantro_reset_fmts (struct hantro_ctx*) ;
 struct hantro_func* hantro_vdev_to_func (struct video_device*) ;
 int kfree (struct hantro_ctx*) ;
 struct hantro_ctx* kzalloc (int,int ) ;
 int queue_init ;
 int v4l2_fh_add (TYPE_2__*) ;
 int v4l2_fh_del (TYPE_2__*) ;
 int v4l2_fh_exit (TYPE_2__*) ;
 int v4l2_fh_init (TYPE_2__*,struct video_device*) ;
 void* v4l2_m2m_ctx_init (int ,struct hantro_ctx*,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct hantro_dev* video_drvdata (struct file*) ;
 int vpu_err (char*) ;

__attribute__((used)) static int hantro_open(struct file *filp)
{
 struct hantro_dev *vpu = video_drvdata(filp);
 struct video_device *vdev = video_devdata(filp);
 struct hantro_func *func = hantro_vdev_to_func(vdev);
 struct hantro_ctx *ctx;
 int allowed_codecs, ret;
 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = vpu;
 if (func->id == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
  allowed_codecs = vpu->variant->codec & HANTRO_ENCODERS;
  ctx->buf_finish = hantro_enc_buf_finish;
  ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(vpu->m2m_dev, ctx,
          queue_init);
 } else if (func->id == MEDIA_ENT_F_PROC_VIDEO_DECODER) {
  allowed_codecs = vpu->variant->codec & HANTRO_DECODERS;
  ctx->buf_finish = hantro_dec_buf_finish;
  ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(vpu->m2m_dev, ctx,
          queue_init);
 } else {
  ctx->fh.m2m_ctx = ERR_PTR(-ENODEV);
 }
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  kfree(ctx);
  return ret;
 }

 v4l2_fh_init(&ctx->fh, vdev);
 filp->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 hantro_reset_fmts(ctx);

 ret = hantro_ctrls_setup(vpu, ctx, allowed_codecs);
 if (ret) {
  vpu_err("Failed to set up controls\n");
  goto err_fh_free;
 }
 ctx->fh.ctrl_handler = &ctx->ctrl_handler;

 return 0;

err_fh_free:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
 return ret;
}
