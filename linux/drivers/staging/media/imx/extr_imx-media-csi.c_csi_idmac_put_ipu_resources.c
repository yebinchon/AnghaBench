
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csi_priv {int * smfc; int * idmac_ch; } ;


 int ipu_idmac_put (int *) ;
 int ipu_smfc_put (int *) ;

__attribute__((used)) static void csi_idmac_put_ipu_resources(struct csi_priv *priv)
{
 if (priv->idmac_ch)
  ipu_idmac_put(priv->idmac_ch);
 priv->idmac_ch = ((void*)0);

 if (priv->smfc)
  ipu_smfc_put(priv->smfc);
 priv->smfc = ((void*)0);
}
