
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdic_priv {TYPE_1__* ops; int vdi; } ;
struct TYPE_2__ {int (* disable ) (struct vdic_priv*) ;int (* stop ) (struct vdic_priv*) ;} ;


 int ipu_vdi_disable (int ) ;
 int stub1 (struct vdic_priv*) ;
 int stub2 (struct vdic_priv*) ;
 int vdic_put_ipu_resources (struct vdic_priv*) ;

__attribute__((used)) static void vdic_stop(struct vdic_priv *priv)
{
 priv->ops->stop(priv);
 ipu_vdi_disable(priv->vdi);
 priv->ops->disable(priv);

 vdic_put_ipu_resources(priv);
}
