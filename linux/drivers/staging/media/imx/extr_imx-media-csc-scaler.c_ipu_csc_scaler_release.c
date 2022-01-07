
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ipu_csc_scaler_priv {int dev; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; } ;
struct file {int private_data; } ;


 int dev_dbg (int ,char*,struct ipu_csc_scaler_ctx*) ;
 struct ipu_csc_scaler_ctx* fh_to_ctx (int ) ;
 int kfree (struct ipu_csc_scaler_ctx*) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct ipu_csc_scaler_priv* video_drvdata (struct file*) ;

__attribute__((used)) static int ipu_csc_scaler_release(struct file *file)
{
 struct ipu_csc_scaler_priv *priv = video_drvdata(file);
 struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(file->private_data);

 dev_dbg(priv->dev, "Releasing instance %p\n", ctx);

 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);

 return 0;
}
