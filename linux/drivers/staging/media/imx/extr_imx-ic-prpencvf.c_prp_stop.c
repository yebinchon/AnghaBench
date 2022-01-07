
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int last_eof; int eof_timeout_timer; int underrun_buf; int nfb4eof_irq; int eof_irq; int src_sd; int last_eof_comp; int irqlock; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int ipu_dev; int sd; } ;


 int ENOIOCTLCMD ;
 int IMX_MEDIA_EOF_TIMEOUT ;
 int VB2_BUF_STATE_ERROR ;
 int del_timer_sync (int *) ;
 int devm_free_irq (int ,int ,struct prp_priv*) ;
 int imx_media_free_dma_buf (int ,int *) ;
 int msecs_to_jiffies (int ) ;
 int prp_put_ipu_resources (struct prp_priv*) ;
 int prp_unsetup (struct prp_priv*,int ) ;
 int s_stream ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int v4l2_warn (int *,char*,...) ;
 int video ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void prp_stop(struct prp_priv *priv)
{
 struct imx_ic_priv *ic_priv = priv->ic_priv;
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&priv->irqlock, flags);
 priv->last_eof = 1;
 spin_unlock_irqrestore(&priv->irqlock, flags);




 ret = wait_for_completion_timeout(
  &priv->last_eof_comp,
  msecs_to_jiffies(IMX_MEDIA_EOF_TIMEOUT));
 if (ret == 0)
  v4l2_warn(&ic_priv->sd, "wait last EOF timeout\n");


 ret = v4l2_subdev_call(priv->src_sd, video, s_stream, 0);
 if (ret && ret != -ENOIOCTLCMD)
  v4l2_warn(&ic_priv->sd,
     "upstream stream off failed: %d\n", ret);

 devm_free_irq(ic_priv->ipu_dev, priv->eof_irq, priv);
 devm_free_irq(ic_priv->ipu_dev, priv->nfb4eof_irq, priv);

 prp_unsetup(priv, VB2_BUF_STATE_ERROR);

 imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->underrun_buf);


 del_timer_sync(&priv->eof_timeout_timer);

 prp_put_ipu_resources(priv);
}
