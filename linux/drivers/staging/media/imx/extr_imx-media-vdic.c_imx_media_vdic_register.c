
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int function; int * ops; } ;
struct v4l2_subdev {int grp_id; int name; int flags; int owner; TYPE_1__ entity; int * internal_ops; } ;
struct vdic_priv {int lock; struct v4l2_subdev sd; struct ipu_soc* ipu; struct device* ipu_dev; } ;
struct v4l2_device {int dummy; } ;
struct ipu_soc {int dummy; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int ENOMEM ;
 struct v4l2_subdev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 struct vdic_priv* devm_kzalloc (struct device*,int,int ) ;
 int imx_media_grp_id_to_sd_name (int ,int,int ,int ) ;
 int ipu_get_num (struct ipu_soc*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct vdic_priv*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;
 int vdic_entity_ops ;
 int vdic_internal_ops ;
 int vdic_subdev_ops ;

struct v4l2_subdev *imx_media_vdic_register(struct v4l2_device *v4l2_dev,
         struct device *ipu_dev,
         struct ipu_soc *ipu,
         u32 grp_id)
{
 struct vdic_priv *priv;
 int ret;

 priv = devm_kzalloc(ipu_dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return ERR_PTR(-ENOMEM);

 priv->ipu_dev = ipu_dev;
 priv->ipu = ipu;

 v4l2_subdev_init(&priv->sd, &vdic_subdev_ops);
 v4l2_set_subdevdata(&priv->sd, priv);
 priv->sd.internal_ops = &vdic_internal_ops;
 priv->sd.entity.ops = &vdic_entity_ops;
 priv->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
 priv->sd.owner = ipu_dev->driver->owner;
 priv->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
 priv->sd.grp_id = grp_id;
 imx_media_grp_id_to_sd_name(priv->sd.name, sizeof(priv->sd.name),
        priv->sd.grp_id, ipu_get_num(ipu));

 mutex_init(&priv->lock);

 ret = v4l2_device_register_subdev(v4l2_dev, &priv->sd);
 if (ret)
  goto free;

 return &priv->sd;
free:
 mutex_destroy(&priv->lock);
 return ERR_PTR(ret);
}
