
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vdic_priv {size_t active_input_pad; TYPE_1__* ops; int vdi; int motion; scalar_t__ csi_direct; struct v4l2_mbus_framefmt* format_mbus; } ;
struct v4l2_mbus_framefmt {int field; int height; int width; } ;
struct TYPE_3__ {int (* setup ) (struct vdic_priv*) ;int (* start ) (struct vdic_priv*) ;} ;


 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int V4L2_STD_UNKNOWN ;
 TYPE_1__ direct_ops ;
 TYPE_1__ indirect_ops ;
 int ipu_vdi_enable (int ) ;
 int ipu_vdi_set_field_order (int ,int ,int ) ;
 int ipu_vdi_set_motion (int ,int ) ;
 int ipu_vdi_setup (int ,int ,int ,int ) ;
 int stub1 (struct vdic_priv*) ;
 int stub2 (struct vdic_priv*) ;
 int vdic_get_ipu_resources (struct vdic_priv*) ;
 int vdic_put_ipu_resources (struct vdic_priv*) ;

__attribute__((used)) static int vdic_start(struct vdic_priv *priv)
{
 struct v4l2_mbus_framefmt *infmt;
 int ret;

 infmt = &priv->format_mbus[priv->active_input_pad];

 priv->ops = priv->csi_direct ? &direct_ops : &indirect_ops;

 ret = vdic_get_ipu_resources(priv);
 if (ret)
  return ret;
 ipu_vdi_setup(priv->vdi, MEDIA_BUS_FMT_UYVY8_2X8,
        infmt->width, infmt->height);
 ipu_vdi_set_field_order(priv->vdi, V4L2_STD_UNKNOWN, infmt->field);
 ipu_vdi_set_motion(priv->vdi, priv->motion);

 ret = priv->ops->setup(priv);
 if (ret)
  goto out_put_ipu;

 ipu_vdi_enable(priv->vdi);

 priv->ops->start(priv);

 return 0;

out_put_ipu:
 vdic_put_ipu_resources(priv);
 return ret;
}
