
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct media_entity {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int ENODEV ;
 struct video_device* ERR_PTR (int ) ;
 struct media_entity* find_pipeline_entity (struct media_entity*,int ,int,int) ;
 struct video_device* media_entity_to_video_device (struct media_entity*) ;

struct video_device *
imx_media_pipeline_video_device(struct media_entity *start_entity,
    enum v4l2_buf_type buftype, bool upstream)
{
 struct media_entity *me;

 me = find_pipeline_entity(start_entity, 0, buftype, upstream);
 if (!me)
  return ERR_PTR(-ENODEV);

 return media_entity_to_video_device(me);
}
