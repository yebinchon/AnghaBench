
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_entity {int * ops; } ;
struct v4l2_subdev {int flags; int grp_id; int name; int * internal_ops; struct media_entity entity; } ;
struct media_pad {int flags; } ;
struct iss_ipipe_device {int input; struct media_pad* pads; struct v4l2_subdev subdev; } ;


 int BIT (int) ;
 int IPIPE_INPUT_NONE ;
 int IPIPE_PADS_NUM ;
 size_t IPIPE_PAD_SINK ;
 size_t IPIPE_PAD_SOURCE_VP ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int ipipe_init_formats (struct v4l2_subdev*,int *) ;
 int ipipe_media_ops ;
 int ipipe_v4l2_internal_ops ;
 int ipipe_v4l2_ops ;
 int media_entity_pads_init (struct media_entity*,int ,struct media_pad*) ;
 int strscpy (int ,char*,int) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct iss_ipipe_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int ipipe_init_entities(struct iss_ipipe_device *ipipe)
{
 struct v4l2_subdev *sd = &ipipe->subdev;
 struct media_pad *pads = ipipe->pads;
 struct media_entity *me = &sd->entity;
 int ret;

 ipipe->input = IPIPE_INPUT_NONE;

 v4l2_subdev_init(sd, &ipipe_v4l2_ops);
 sd->internal_ops = &ipipe_v4l2_internal_ops;
 strscpy(sd->name, "OMAP4 ISS ISP IPIPE", sizeof(sd->name));
 sd->grp_id = BIT(16);
 v4l2_set_subdevdata(sd, ipipe);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 pads[IPIPE_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 pads[IPIPE_PAD_SOURCE_VP].flags = MEDIA_PAD_FL_SOURCE;

 me->ops = &ipipe_media_ops;
 ret = media_entity_pads_init(me, IPIPE_PADS_NUM, pads);
 if (ret < 0)
  return ret;

 ipipe_init_formats(sd, ((void*)0));

 return 0;
}
