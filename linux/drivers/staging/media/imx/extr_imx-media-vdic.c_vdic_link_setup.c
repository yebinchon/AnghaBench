
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vdic_priv {int csi_direct; scalar_t__ active_input_pad; int lock; struct media_entity* src; struct imx_media_video_dev* vdev; struct v4l2_subdev* sink_sd; int ipu_dev; } ;
struct v4l2_subdev {int grp_id; int name; } ;
struct media_pad {int flags; scalar_t__ index; struct media_entity* entity; } ;
struct media_entity {int name; } ;
struct imx_media_video_dev {int dummy; } ;


 scalar_t__ CSI_SRC_PAD_DIRECT ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int IMX_MEDIA_GRP_ID_IPU_CSI ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SOURCE ;
 scalar_t__ VDIC_SINK_PAD_IDMAC ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 int is_media_entity_v4l2_video_device (struct media_entity*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int vdic_link_setup(struct media_entity *entity,
       const struct media_pad *local,
       const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_subdev *remote_sd;
 int ret = 0;

 dev_dbg(priv->ipu_dev, "%s: link setup %s -> %s",
  sd->name, remote->entity->name, local->entity->name);

 mutex_lock(&priv->lock);

 if (local->flags & MEDIA_PAD_FL_SOURCE) {
  if (!is_media_entity_v4l2_subdev(remote->entity)) {
   ret = -EINVAL;
   goto out;
  }

  remote_sd = media_entity_to_v4l2_subdev(remote->entity);

  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (priv->sink_sd) {
    ret = -EBUSY;
    goto out;
   }
   priv->sink_sd = remote_sd;
  } else {
   priv->sink_sd = ((void*)0);
  }

  goto out;
 }



 if (flags & MEDIA_LNK_FL_ENABLED) {
  if (priv->src) {
   ret = -EBUSY;
   goto out;
  }
 } else {
  priv->src = ((void*)0);
  goto out;
 }

 if (local->index == VDIC_SINK_PAD_IDMAC) {
  struct imx_media_video_dev *vdev = priv->vdev;

  if (!is_media_entity_v4l2_video_device(remote->entity)) {
   ret = -EINVAL;
   goto out;
  }
  if (!vdev) {
   ret = -ENODEV;
   goto out;
  }

  priv->csi_direct = 0;
 } else {
  if (!is_media_entity_v4l2_subdev(remote->entity)) {
   ret = -EINVAL;
   goto out;
  }

  remote_sd = media_entity_to_v4l2_subdev(remote->entity);


  if (!(remote_sd->grp_id & IMX_MEDIA_GRP_ID_IPU_CSI) ||
      remote->index != CSI_SRC_PAD_DIRECT) {
   ret = -EINVAL;
   goto out;
  }

  priv->csi_direct = 1;
 }

 priv->src = remote->entity;

 priv->active_input_pad = local->index;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
