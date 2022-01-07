
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int grp_id; } ;
struct media_pad {int flags; scalar_t__ index; struct media_entity* entity; } ;
struct media_entity {int name; } ;
struct csi_priv {scalar_t__ active_output_pad; int lock; struct media_entity* sink; int dest; scalar_t__ fim; int ctrl_hdlr; struct v4l2_subdev* src_sd; int dev; } ;


 scalar_t__ CSI_SRC_PAD_IDMAC ;
 int EBUSY ;
 int EINVAL ;


 int IPU_CSI_DEST_IC ;
 int IPU_CSI_DEST_IDMAC ;
 int IPU_CSI_DEST_VDIC ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SINK ;
 int dev_dbg (int ,char*,int ,int ) ;
 int imx_media_fim_add_controls (scalar_t__) ;
 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 int is_media_entity_v4l2_video_device (struct media_entity*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_ctrl_handler_init (int *,int ) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi_link_setup(struct media_entity *entity,
     const struct media_pad *local,
     const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct csi_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_subdev *remote_sd;
 int ret = 0;

 dev_dbg(priv->dev, "link setup %s -> %s\n", remote->entity->name,
  local->entity->name);

 mutex_lock(&priv->lock);

 if (local->flags & MEDIA_PAD_FL_SINK) {
  if (!is_media_entity_v4l2_subdev(remote->entity)) {
   ret = -EINVAL;
   goto out;
  }

  remote_sd = media_entity_to_v4l2_subdev(remote->entity);

  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (priv->src_sd) {
    ret = -EBUSY;
    goto out;
   }
   priv->src_sd = remote_sd;
  } else {
   priv->src_sd = ((void*)0);
  }

  goto out;
 }



 if (flags & MEDIA_LNK_FL_ENABLED) {
  if (priv->sink) {
   ret = -EBUSY;
   goto out;
  }
 } else {
  v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
  v4l2_ctrl_handler_init(&priv->ctrl_hdlr, 0);
  priv->sink = ((void*)0);

  priv->active_output_pad = CSI_SRC_PAD_IDMAC;
  goto out;
 }


 priv->active_output_pad = local->index;


 if (local->index == CSI_SRC_PAD_IDMAC) {
  if (!is_media_entity_v4l2_video_device(remote->entity)) {
   ret = -EINVAL;
   goto out;
  }

  if (priv->fim) {
   ret = imx_media_fim_add_controls(priv->fim);
   if (ret)
    goto out;
  }

  priv->dest = IPU_CSI_DEST_IDMAC;
 } else {
  if (!is_media_entity_v4l2_subdev(remote->entity)) {
   ret = -EINVAL;
   goto out;
  }

  remote_sd = media_entity_to_v4l2_subdev(remote->entity);
  switch (remote_sd->grp_id) {
  case 128:
   priv->dest = IPU_CSI_DEST_VDIC;
   break;
  case 129:
   priv->dest = IPU_CSI_DEST_IC;
   break;
  default:
   ret = -EINVAL;
   goto out;
  }
 }

 priv->sink = remote->entity;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
