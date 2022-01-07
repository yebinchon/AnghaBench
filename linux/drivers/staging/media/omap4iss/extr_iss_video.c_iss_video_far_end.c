
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct media_graph {int dummy; } ;
struct TYPE_3__ {struct media_device* mdev; } ;
struct media_entity {TYPE_1__ graph_obj; } ;
struct media_device {int graph_mutex; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct iss_video {scalar_t__ type; TYPE_2__ video; } ;


 int is_media_entity_v4l2_video_device (struct media_entity*) ;
 int media_entity_to_video_device (struct media_entity*) ;
 int media_graph_walk_cleanup (struct media_graph*) ;
 scalar_t__ media_graph_walk_init (struct media_graph*,struct media_device*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iss_video* to_iss_video (int ) ;

__attribute__((used)) static struct iss_video *
iss_video_far_end(struct iss_video *video)
{
 struct media_graph graph;
 struct media_entity *entity = &video->video.entity;
 struct media_device *mdev = entity->graph_obj.mdev;
 struct iss_video *far_end = ((void*)0);

 mutex_lock(&mdev->graph_mutex);

 if (media_graph_walk_init(&graph, mdev)) {
  mutex_unlock(&mdev->graph_mutex);
  return ((void*)0);
 }

 media_graph_walk_start(&graph, entity);

 while ((entity = media_graph_walk_next(&graph))) {
  if (entity == &video->video.entity)
   continue;

  if (!is_media_entity_v4l2_video_device(entity))
   continue;

  far_end = to_iss_video(media_entity_to_video_device(entity));
  if (far_end->type != video->type)
   break;

  far_end = ((void*)0);
 }

 mutex_unlock(&mdev->graph_mutex);

 media_graph_walk_cleanup(&graph);

 return far_end;
}
