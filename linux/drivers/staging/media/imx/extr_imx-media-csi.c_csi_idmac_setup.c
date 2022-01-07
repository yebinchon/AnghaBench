
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {int idmac_ch; int smfc; int ipu; } ;


 int csi_idmac_setup_channel (struct csi_priv*) ;
 int ipu_cpmem_dump (int ) ;
 int ipu_dump (int ) ;
 int ipu_idmac_enable_channel (int ) ;
 int ipu_idmac_select_buffer (int ,int) ;
 int ipu_smfc_enable (int ) ;

__attribute__((used)) static int csi_idmac_setup(struct csi_priv *priv)
{
 int ret;

 ret = csi_idmac_setup_channel(priv);
 if (ret)
  return ret;

 ipu_cpmem_dump(priv->idmac_ch);
 ipu_dump(priv->ipu);

 ipu_smfc_enable(priv->smfc);


 ipu_idmac_select_buffer(priv->idmac_ch, 0);
 ipu_idmac_select_buffer(priv->idmac_ch, 1);


 ipu_idmac_enable_channel(priv->idmac_ch);

 return 0;
}
