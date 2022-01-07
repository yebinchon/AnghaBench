
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int ic; int out_ch; } ;


 int ipu_ic_disable (int ) ;
 int ipu_ic_task_disable (int ) ;
 int ipu_idmac_disable_channel (int ) ;

__attribute__((used)) static void prp_unsetup_norotation(struct prp_priv *priv)
{
 ipu_ic_task_disable(priv->ic);
 ipu_idmac_disable_channel(priv->out_ch);
 ipu_ic_disable(priv->ic);
}
