
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {int last_eof; int sd; int last_eof_comp; int irqlock; } ;


 int IMX_MEDIA_EOF_TIMEOUT ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_warn (int *,char*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void csi_idmac_wait_last_eof(struct csi_priv *priv)
{
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&priv->irqlock, flags);
 priv->last_eof = 1;
 spin_unlock_irqrestore(&priv->irqlock, flags);




 ret = wait_for_completion_timeout(
  &priv->last_eof_comp, msecs_to_jiffies(IMX_MEDIA_EOF_TIMEOUT));
 if (ret == 0)
  v4l2_warn(&priv->sd, "wait last EOF timeout\n");
}
