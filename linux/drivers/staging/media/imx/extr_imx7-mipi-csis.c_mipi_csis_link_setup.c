
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int name; } ;
struct csi_state {int sink_linked; int lock; struct v4l2_subdev* src_sd; int dev; } ;


 int EBUSY ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SOURCE ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 struct csi_state* mipi_sd_to_csis_state (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mipi_csis_link_setup(struct media_entity *entity,
    const struct media_pad *local_pad,
    const struct media_pad *remote_pad, u32 flags)
{
 struct v4l2_subdev *mipi_sd = media_entity_to_v4l2_subdev(entity);
 struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
 struct v4l2_subdev *remote_sd;
 int ret = 0;

 dev_dbg(state->dev, "link setup %s -> %s", remote_pad->entity->name,
  local_pad->entity->name);

 remote_sd = media_entity_to_v4l2_subdev(remote_pad->entity);

 mutex_lock(&state->lock);

 if (local_pad->flags & MEDIA_PAD_FL_SOURCE) {
  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (state->sink_linked) {
    ret = -EBUSY;
    goto out;
   }
   state->sink_linked = 1;
  } else {
   state->sink_linked = 0;
  }
 } else {
  if (flags & MEDIA_LNK_FL_ENABLED) {
   if (state->src_sd) {
    ret = -EBUSY;
    goto out;
   }
   state->src_sd = remote_sd;
  } else {
   state->src_sd = ((void*)0);
  }
 }

out:
 mutex_unlock(&state->lock);
 return ret;
}
