
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {int smfc; int idmac_ch; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int csi_idmac_unsetup_vb2_buf (struct csi_priv*,int) ;
 int ipu_idmac_disable_channel (int ) ;
 int ipu_smfc_disable (int ) ;

__attribute__((used)) static void csi_idmac_unsetup(struct csi_priv *priv,
         enum vb2_buffer_state state)
{
 ipu_idmac_disable_channel(priv->idmac_ch);
 ipu_smfc_disable(priv->smfc);

 csi_idmac_unsetup_vb2_buf(priv, state);
}
