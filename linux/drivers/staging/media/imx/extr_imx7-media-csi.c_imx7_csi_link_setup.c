
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int name; } ;
struct imx7_csi {int lock; struct v4l2_subdev* src_sd; struct media_entity* sink; int ctrl_hdlr; int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SINK ;
 int dev_dbg (int ,char*,int ,int ) ;
 int imx7_csi_deinit (struct imx7_csi*) ;
 int imx7_csi_init (struct imx7_csi*) ;
 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_ctrl_handler_init (int *,int ) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx7_csi_link_setup(struct media_entity *entity,
          const struct media_pad *local,
          const struct media_pad *remote, u32 flags)
{
 struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 struct v4l2_subdev *remote_sd;
 int ret = 0;

 dev_dbg(csi->dev, "link setup %s -> %s\n", remote->entity->name,
  local->entity->name);

 mutex_lock(&csi->lock);

 if (local->flags & MEDIA_PAD_FL_SINK) {
  if (!is_media_entity_v4l2_subdev(remote->entity)) {
   ret = -EINVAL;
   goto unlock;
  }

  remote_sd = media_entity_to_v4l2_subdev(remote->entity);

  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (csi->src_sd) {
    ret = -EBUSY;
    goto unlock;
   }
   csi->src_sd = remote_sd;
  } else {
   csi->src_sd = ((void*)0);
  }

  goto init;
 }


 if (flags & MEDIA_LNK_FL_ENABLED) {
  if (csi->sink) {
   ret = -EBUSY;
   goto unlock;
  }
  csi->sink = remote->entity;
 } else {
  v4l2_ctrl_handler_free(&csi->ctrl_hdlr);
  v4l2_ctrl_handler_init(&csi->ctrl_hdlr, 0);
  csi->sink = ((void*)0);
 }

init:
 if (csi->sink || csi->src_sd)
  ret = imx7_csi_init(csi);
 else
  imx7_csi_deinit(csi);

unlock:
 mutex_unlock(&csi->lock);

 return ret;
}
