
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct media_entity {scalar_t__ pipe; } ;
struct TYPE_2__ {int graph_mutex; } ;
struct imx_media_dev {TYPE_1__ md; int pipe; } ;


 int EINVAL ;
 int __media_pipeline_start (struct media_entity*,int *) ;
 int __media_pipeline_stop (struct media_entity*) ;
 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 int video ;

int imx_media_pipeline_set_stream(struct imx_media_dev *imxmd,
      struct media_entity *entity,
      bool on)
{
 struct v4l2_subdev *sd;
 int ret = 0;

 if (!is_media_entity_v4l2_subdev(entity))
  return -EINVAL;
 sd = media_entity_to_v4l2_subdev(entity);

 mutex_lock(&imxmd->md.graph_mutex);

 if (on) {
  ret = __media_pipeline_start(entity, &imxmd->pipe);
  if (ret)
   goto out;
  ret = v4l2_subdev_call(sd, video, s_stream, 1);
  if (ret)
   __media_pipeline_stop(entity);
 } else {
  v4l2_subdev_call(sd, video, s_stream, 0);
  if (entity->pipe)
   __media_pipeline_stop(entity);
 }

out:
 mutex_unlock(&imxmd->md.graph_mutex);
 return ret;
}
