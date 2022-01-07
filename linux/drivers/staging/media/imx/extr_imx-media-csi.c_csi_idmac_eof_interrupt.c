
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {int last_eof; int ipu_buf_num; int irqlock; int eof_timeout_timer; int idmac_ch; scalar_t__ fim; int last_eof_comp; } ;
typedef int irqreturn_t ;


 int IMX_MEDIA_EOF_TIMEOUT ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int csi_vb2_buf_done (struct csi_priv*) ;
 int imx_media_fim_eof_monitor (scalar_t__,int ) ;
 int ipu_idmac_select_buffer (int ,int) ;
 scalar_t__ jiffies ;
 int ktime_get () ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t csi_idmac_eof_interrupt(int irq, void *dev_id)
{
 struct csi_priv *priv = dev_id;

 spin_lock(&priv->irqlock);

 if (priv->last_eof) {
  complete(&priv->last_eof_comp);
  priv->last_eof = 0;
  goto unlock;
 }

 if (priv->fim)

  imx_media_fim_eof_monitor(priv->fim, ktime_get());

 csi_vb2_buf_done(priv);


 ipu_idmac_select_buffer(priv->idmac_ch, priv->ipu_buf_num);

 priv->ipu_buf_num ^= 1;


 mod_timer(&priv->eof_timeout_timer,
    jiffies + msecs_to_jiffies(IMX_MEDIA_EOF_TIMEOUT));

unlock:
 spin_unlock(&priv->irqlock);
 return IRQ_HANDLED;
}
