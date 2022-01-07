
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {scalar_t__ dest; scalar_t__ fim; int src_sd; int csi; } ;


 scalar_t__ IPU_CSI_DEST_IDMAC ;
 int csi_idmac_stop (struct csi_priv*) ;
 int csi_idmac_wait_last_eof (struct csi_priv*) ;
 int imx_media_fim_set_stream (scalar_t__,int *,int) ;
 int ipu_csi_disable (int ) ;
 int s_stream ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 int video ;

__attribute__((used)) static void csi_stop(struct csi_priv *priv)
{
 if (priv->dest == IPU_CSI_DEST_IDMAC)
  csi_idmac_wait_last_eof(priv);






 ipu_csi_disable(priv->csi);


 v4l2_subdev_call(priv->src_sd, video, s_stream, 0);

 if (priv->dest == IPU_CSI_DEST_IDMAC) {
  csi_idmac_stop(priv);


  if (priv->fim)
   imx_media_fim_set_stream(priv->fim, ((void*)0), 0);
 }
}
