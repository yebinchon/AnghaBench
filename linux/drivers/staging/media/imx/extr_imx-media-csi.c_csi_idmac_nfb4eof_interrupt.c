
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {int nfb4eof; int irqlock; int sd; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static irqreturn_t csi_idmac_nfb4eof_interrupt(int irq, void *dev_id)
{
 struct csi_priv *priv = dev_id;

 spin_lock(&priv->irqlock);





 priv->nfb4eof = 1;

 v4l2_err(&priv->sd, "NFB4EOF\n");

 spin_unlock(&priv->irqlock);

 return IRQ_HANDLED;
}
