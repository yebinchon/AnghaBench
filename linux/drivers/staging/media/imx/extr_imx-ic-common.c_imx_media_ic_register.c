
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int function; int ops; } ;
struct v4l2_subdev {int flags; int grp_id; int name; int owner; TYPE_1__ entity; int internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct ipu_soc {int dummy; } ;
struct imx_ic_priv {size_t task_id; struct v4l2_subdev sd; struct ipu_soc* ipu; struct device* ipu_dev; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_6__ {int (* init ) (struct imx_ic_priv*) ;int (* remove ) (struct imx_ic_priv*) ;int entity_ops; int internal_ops; int subdev_ops; } ;
struct TYPE_5__ {int owner; } ;


 int EINVAL ;
 int ENOMEM ;
 struct v4l2_subdev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 size_t IC_TASK_ENCODER ;
 size_t IC_TASK_PRP ;
 size_t IC_TASK_VIEWFINDER ;



 int MEDIA_ENT_F_PROC_VIDEO_SCALER ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 struct imx_ic_priv* devm_kzalloc (struct device*,int,int ) ;
 TYPE_3__** ic_ops ;
 int imx_media_grp_id_to_sd_name (int ,int,int,int ) ;
 int ipu_get_num (struct ipu_soc*) ;
 int stub1 (struct imx_ic_priv*) ;
 int stub2 (struct imx_ic_priv*) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct imx_ic_priv*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int ) ;

struct v4l2_subdev *imx_media_ic_register(struct v4l2_device *v4l2_dev,
       struct device *ipu_dev,
       struct ipu_soc *ipu,
       u32 grp_id)
{
 struct imx_ic_priv *priv;
 int ret;

 priv = devm_kzalloc(ipu_dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return ERR_PTR(-ENOMEM);

 priv->ipu_dev = ipu_dev;
 priv->ipu = ipu;


 switch (grp_id) {
 case 130:
  priv->task_id = IC_TASK_PRP;
  break;
 case 129:
  priv->task_id = IC_TASK_ENCODER;
  break;
 case 128:
  priv->task_id = IC_TASK_VIEWFINDER;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }

 v4l2_subdev_init(&priv->sd, ic_ops[priv->task_id]->subdev_ops);
 v4l2_set_subdevdata(&priv->sd, priv);
 priv->sd.internal_ops = ic_ops[priv->task_id]->internal_ops;
 priv->sd.entity.ops = ic_ops[priv->task_id]->entity_ops;
 priv->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
 priv->sd.owner = ipu_dev->driver->owner;
 priv->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
 priv->sd.grp_id = grp_id;
 imx_media_grp_id_to_sd_name(priv->sd.name, sizeof(priv->sd.name),
        priv->sd.grp_id, ipu_get_num(ipu));

 ret = ic_ops[priv->task_id]->init(priv);
 if (ret)
  return ERR_PTR(ret);

 ret = v4l2_device_register_subdev(v4l2_dev, &priv->sd);
 if (ret) {
  ic_ops[priv->task_id]->remove(priv);
  return ERR_PTR(ret);
 }

 return &priv->sd;
}
