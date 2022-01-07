
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ipu_csc_scaler_priv {int dev; int m2m_dev; } ;
struct TYPE_5__ {int m2m_ctx; int * ctrl_handler; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; void** q_data; int ctrl_hdlr; struct ipu_csc_scaler_priv* priv; int rot_mode; } ;
struct file {TYPE_1__* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IPU_ROTATE_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;
 int dev_dbg (int ,char*,struct ipu_csc_scaler_ctx*,int ) ;
 int ipu_csc_scaler_init_controls (struct ipu_csc_scaler_ctx*) ;
 void* ipu_csc_scaler_q_data_default ;
 int ipu_csc_scaler_queue_init ;
 int kfree (struct ipu_csc_scaler_ctx*) ;
 struct ipu_csc_scaler_ctx* kzalloc (int,int ) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct ipu_csc_scaler_ctx*,int *) ;
 int v4l2_m2m_ctx_release (int ) ;
 int video_devdata (struct file*) ;
 struct ipu_csc_scaler_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int ipu_csc_scaler_open(struct file *file)
{
 struct ipu_csc_scaler_priv *priv = video_drvdata(file);
 struct ipu_csc_scaler_ctx *ctx = ((void*)0);
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->rot_mode = IPU_ROTATE_NONE;

 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);
 ctx->priv = priv;

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(priv->m2m_dev, ctx,
         &ipu_csc_scaler_queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  goto err_ctx;
 }

 ret = ipu_csc_scaler_init_controls(ctx);
 if (ret)
  goto err_ctrls;

 ctx->fh.ctrl_handler = &ctx->ctrl_hdlr;

 ctx->q_data[V4L2_M2M_SRC] = ipu_csc_scaler_q_data_default;
 ctx->q_data[V4L2_M2M_DST] = ipu_csc_scaler_q_data_default;

 dev_dbg(priv->dev, "Created instance %p, m2m_ctx: %p\n", ctx,
  ctx->fh.m2m_ctx);

 return 0;

err_ctrls:
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
err_ctx:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
 return ret;
}
