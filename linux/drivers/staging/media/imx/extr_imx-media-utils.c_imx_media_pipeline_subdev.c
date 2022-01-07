
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;


 int ENODEV ;
 struct v4l2_subdev* ERR_PTR (int ) ;
 struct media_entity* find_pipeline_entity (struct media_entity*,int ,int ,int) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;

struct v4l2_subdev *
imx_media_pipeline_subdev(struct media_entity *start_entity, u32 grp_id,
     bool upstream)
{
 struct media_entity *me;

 me = find_pipeline_entity(start_entity, grp_id, 0, upstream);
 if (!me)
  return ERR_PTR(-ENODEV);

 return media_entity_to_v4l2_subdev(me);
}
