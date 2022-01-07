
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {int eof_timeout_timer; int underrun_buf; int dev; int nfb4eof_irq; int eof_irq; } ;


 int VB2_BUF_STATE_ERROR ;
 int csi_idmac_put_ipu_resources (struct csi_priv*) ;
 int csi_idmac_unsetup (struct csi_priv*,int ) ;
 int del_timer_sync (int *) ;
 int devm_free_irq (int ,int ,struct csi_priv*) ;
 int imx_media_free_dma_buf (int ,int *) ;

__attribute__((used)) static void csi_idmac_stop(struct csi_priv *priv)
{
 devm_free_irq(priv->dev, priv->eof_irq, priv);
 devm_free_irq(priv->dev, priv->nfb4eof_irq, priv);

 csi_idmac_unsetup(priv, VB2_BUF_STATE_ERROR);

 imx_media_free_dma_buf(priv->dev, &priv->underrun_buf);


 del_timer_sync(&priv->eof_timeout_timer);

 csi_idmac_put_ipu_resources(priv);
}
