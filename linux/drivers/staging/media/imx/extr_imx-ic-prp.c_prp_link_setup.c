
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int grp_id; } ;
struct prp_priv {int lock; struct v4l2_subdev* sink_sd_prpvf; struct v4l2_subdev* sink_sd_prpenc; struct v4l2_subdev* src_sd; } ;
struct media_pad {int flags; int index; struct media_entity* entity; } ;
struct media_entity {int name; } ;
struct TYPE_2__ {int name; } ;
struct imx_ic_priv {TYPE_1__ sd; int ipu_dev; struct prp_priv* task_priv; } ;


 int EBUSY ;
 int EINVAL ;
 int IMX_MEDIA_GRP_ID_IPU_VDIC ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SINK ;


 int dev_dbg (int ,char*,int ,int ,int ) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx_ic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int prp_link_setup(struct media_entity *entity,
     const struct media_pad *local,
     const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct imx_ic_priv *ic_priv = v4l2_get_subdevdata(sd);
 struct prp_priv *priv = ic_priv->task_priv;
 struct v4l2_subdev *remote_sd;
 int ret = 0;

 dev_dbg(ic_priv->ipu_dev, "%s: link setup %s -> %s",
  ic_priv->sd.name, remote->entity->name, local->entity->name);

 remote_sd = media_entity_to_v4l2_subdev(remote->entity);

 mutex_lock(&priv->lock);

 if (local->flags & MEDIA_PAD_FL_SINK) {
  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (priv->src_sd) {
    ret = -EBUSY;
    goto out;
   }
   if (priv->sink_sd_prpenc &&
       (remote_sd->grp_id & IMX_MEDIA_GRP_ID_IPU_VDIC)) {
    ret = -EINVAL;
    goto out;
   }
   priv->src_sd = remote_sd;
  } else {
   priv->src_sd = ((void*)0);
  }

  goto out;
 }


 if (flags & MEDIA_LNK_FL_ENABLED) {
  switch (local->index) {
  case 129:
   if (priv->sink_sd_prpenc) {
    ret = -EBUSY;
    goto out;
   }
   if (priv->src_sd && (priv->src_sd->grp_id &
          IMX_MEDIA_GRP_ID_IPU_VDIC)) {
    ret = -EINVAL;
    goto out;
   }
   priv->sink_sd_prpenc = remote_sd;
   break;
  case 128:
   if (priv->sink_sd_prpvf) {
    ret = -EBUSY;
    goto out;
   }
   priv->sink_sd_prpvf = remote_sd;
   break;
  default:
   ret = -EINVAL;
  }
 } else {
  switch (local->index) {
  case 129:
   priv->sink_sd_prpenc = ((void*)0);
   break;
  case 128:
   priv->sink_sd_prpvf = ((void*)0);
   break;
  default:
   ret = -EINVAL;
  }
 }

out:
 mutex_unlock(&priv->lock);
 return ret;
}
