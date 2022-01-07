
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int * rot_out_ch; int * rot_in_ch; int * out_ch; int * ic; } ;


 int ipu_ic_put (int *) ;
 int ipu_idmac_put (int *) ;

__attribute__((used)) static void prp_put_ipu_resources(struct prp_priv *priv)
{
 if (priv->ic)
  ipu_ic_put(priv->ic);
 priv->ic = ((void*)0);

 if (priv->out_ch)
  ipu_idmac_put(priv->out_ch);
 priv->out_ch = ((void*)0);

 if (priv->rot_in_ch)
  ipu_idmac_put(priv->rot_in_ch);
 priv->rot_in_ch = ((void*)0);

 if (priv->rot_out_ch)
  ipu_idmac_put(priv->rot_out_ch);
 priv->rot_out_ch = ((void*)0);
}
