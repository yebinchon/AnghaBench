
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int last_eof; int ipu_buf_num; int irqlock; int eof_timeout_timer; struct ipuv3_channel* out_ch; struct ipuv3_channel* rot_out_ch; int rot_mode; int last_eof_comp; } ;
struct ipuv3_channel {int dummy; } ;
typedef int irqreturn_t ;


 int IMX_MEDIA_EOF_TIMEOUT ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int ipu_idmac_select_buffer (struct ipuv3_channel*,int) ;
 scalar_t__ ipu_rot_mode_is_irt (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int prp_vb2_buf_done (struct prp_priv*,struct ipuv3_channel*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t prp_eof_interrupt(int irq, void *dev_id)
{
 struct prp_priv *priv = dev_id;
 struct ipuv3_channel *channel;

 spin_lock(&priv->irqlock);

 if (priv->last_eof) {
  complete(&priv->last_eof_comp);
  priv->last_eof = 0;
  goto unlock;
 }

 channel = (ipu_rot_mode_is_irt(priv->rot_mode)) ?
  priv->rot_out_ch : priv->out_ch;

 prp_vb2_buf_done(priv, channel);


 ipu_idmac_select_buffer(channel, priv->ipu_buf_num);

 priv->ipu_buf_num ^= 1;


 mod_timer(&priv->eof_timeout_timer,
    jiffies + msecs_to_jiffies(IMX_MEDIA_EOF_TIMEOUT));

unlock:
 spin_unlock(&priv->irqlock);
 return IRQ_HANDLED;
}
