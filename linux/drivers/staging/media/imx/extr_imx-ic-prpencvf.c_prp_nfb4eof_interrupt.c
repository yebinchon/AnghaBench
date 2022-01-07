
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int nfb4eof; int irqlock; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int sd; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static irqreturn_t prp_nfb4eof_interrupt(int irq, void *dev_id)
{
 struct prp_priv *priv = dev_id;
 struct imx_ic_priv *ic_priv = priv->ic_priv;

 spin_lock(&priv->irqlock);





 priv->nfb4eof = 1;

 v4l2_err(&ic_priv->sd, "NFB4EOF\n");

 spin_unlock(&priv->irqlock);

 return IRQ_HANDLED;
}
