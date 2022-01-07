
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int * rot_buf; int ic; int rot_in_ch; int out_ch; int rot_out_ch; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int ipu_dev; } ;


 int imx_media_free_dma_buf (int ,int *) ;
 int ipu_ic_disable (int ) ;
 int ipu_ic_task_disable (int ) ;
 int ipu_idmac_disable_channel (int ) ;
 int ipu_idmac_unlink (int ,int ) ;

__attribute__((used)) static void prp_unsetup_rotation(struct prp_priv *priv)
{
 struct imx_ic_priv *ic_priv = priv->ic_priv;

 ipu_ic_task_disable(priv->ic);

 ipu_idmac_disable_channel(priv->out_ch);
 ipu_idmac_disable_channel(priv->rot_in_ch);
 ipu_idmac_disable_channel(priv->rot_out_ch);

 ipu_idmac_unlink(priv->out_ch, priv->rot_in_ch);

 ipu_ic_disable(priv->ic);

 imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[0]);
 imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[1]);
}
