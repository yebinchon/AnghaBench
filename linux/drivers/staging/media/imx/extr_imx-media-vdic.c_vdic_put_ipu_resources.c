
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {int * vdi; int * vdi_in_ch_n; int * vdi_in_ch; int * vdi_in_ch_p; } ;


 int IS_ERR_OR_NULL (int *) ;
 int ipu_idmac_put (int *) ;
 int ipu_vdi_put (int *) ;

__attribute__((used)) static void vdic_put_ipu_resources(struct vdic_priv *priv)
{
 if (priv->vdi_in_ch_p)
  ipu_idmac_put(priv->vdi_in_ch_p);
 priv->vdi_in_ch_p = ((void*)0);

 if (priv->vdi_in_ch)
  ipu_idmac_put(priv->vdi_in_ch);
 priv->vdi_in_ch = ((void*)0);

 if (priv->vdi_in_ch_n)
  ipu_idmac_put(priv->vdi_in_ch_n);
 priv->vdi_in_ch_n = ((void*)0);

 if (!IS_ERR_OR_NULL(priv->vdi))
  ipu_vdi_put(priv->vdi);
 priv->vdi = ((void*)0);
}
