
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prp_priv {int csi_id; TYPE_1__* src_sd; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int ipu; } ;
struct TYPE_2__ {int grp_id; } ;


 int IMX_MEDIA_GRP_ID_IPU_VDIC ;
 int ipu_set_ic_src_mux (int ,int ,int) ;

__attribute__((used)) static int prp_start(struct prp_priv *priv)
{
 struct imx_ic_priv *ic_priv = priv->ic_priv;
 bool src_is_vdic;


 src_is_vdic = !!(priv->src_sd->grp_id & IMX_MEDIA_GRP_ID_IPU_VDIC);

 ipu_set_ic_src_mux(ic_priv->ipu, priv->csi_id, src_is_vdic);

 return 0;
}
