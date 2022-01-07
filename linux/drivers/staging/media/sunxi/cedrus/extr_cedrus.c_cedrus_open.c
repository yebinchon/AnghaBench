
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_1__* private_data; } ;
struct cedrus_dev {int dev_mutex; int m2m_dev; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct cedrus_ctx {int hdl; TYPE_1__ fh; struct cedrus_dev* dev; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cedrus_init_ctrls (struct cedrus_dev*,struct cedrus_ctx*) ;
 int cedrus_queue_init ;
 int kfree (struct cedrus_ctx*) ;
 struct cedrus_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct cedrus_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct cedrus_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int cedrus_open(struct file *file)
{
 struct cedrus_dev *dev = video_drvdata(file);
 struct cedrus_ctx *ctx = ((void*)0);
 int ret;

 if (mutex_lock_interruptible(&dev->dev_mutex))
  return -ERESTARTSYS;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  mutex_unlock(&dev->dev_mutex);
  return -ENOMEM;
 }

 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 ctx->dev = dev;

 ret = cedrus_init_ctrls(dev, ctx);
 if (ret)
  goto err_free;

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, ctx,
         &cedrus_queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  goto err_ctrls;
 }

 v4l2_fh_add(&ctx->fh);

 mutex_unlock(&dev->dev_mutex);

 return 0;

err_ctrls:
 v4l2_ctrl_handler_free(&ctx->hdl);
err_free:
 kfree(ctx);
 mutex_unlock(&dev->dev_mutex);

 return ret;
}
