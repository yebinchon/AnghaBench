
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_entity {int * ops; } ;
struct v4l2_subdev {int flags; int grp_id; int name; int * internal_ops; struct media_entity entity; } ;
struct media_pad {int flags; } ;
struct TYPE_2__ {int capture_mem; int bpl_alignment; int bpl_zero_padding; int bpl_max; int iss; int * ops; int type; } ;
struct iss_resizer_device {TYPE_1__ video_out; int input; struct media_pad* pads; struct v4l2_subdev subdev; } ;


 int BIT (int) ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int PAGE_ALIGN (int) ;
 int RESIZER_INPUT_NONE ;
 int RESIZER_PADS_NUM ;
 size_t RESIZER_PAD_SINK ;
 size_t RESIZER_PAD_SOURCE_MEM ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int media_entity_pads_init (struct media_entity*,int ,struct media_pad*) ;
 int omap4iss_video_init (TYPE_1__*,char*) ;
 int resizer_init_formats (struct v4l2_subdev*,int *) ;
 int resizer_media_ops ;
 int resizer_v4l2_internal_ops ;
 int resizer_v4l2_ops ;
 int resizer_video_ops ;
 int strscpy (int ,char*,int) ;
 int to_iss_device (struct iss_resizer_device*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct iss_resizer_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int resizer_init_entities(struct iss_resizer_device *resizer)
{
 struct v4l2_subdev *sd = &resizer->subdev;
 struct media_pad *pads = resizer->pads;
 struct media_entity *me = &sd->entity;
 int ret;

 resizer->input = RESIZER_INPUT_NONE;

 v4l2_subdev_init(sd, &resizer_v4l2_ops);
 sd->internal_ops = &resizer_v4l2_internal_ops;
 strscpy(sd->name, "OMAP4 ISS ISP resizer", sizeof(sd->name));
 sd->grp_id = BIT(16);
 v4l2_set_subdevdata(sd, resizer);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 pads[RESIZER_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 pads[RESIZER_PAD_SOURCE_MEM].flags = MEDIA_PAD_FL_SOURCE;

 me->ops = &resizer_media_ops;
 ret = media_entity_pads_init(me, RESIZER_PADS_NUM, pads);
 if (ret < 0)
  return ret;

 resizer_init_formats(sd, ((void*)0));

 resizer->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 resizer->video_out.ops = &resizer_video_ops;
 resizer->video_out.iss = to_iss_device(resizer);
 resizer->video_out.capture_mem = PAGE_ALIGN(4096 * 4096) * 3;
 resizer->video_out.bpl_alignment = 32;
 resizer->video_out.bpl_zero_padding = 1;
 resizer->video_out.bpl_max = 0x1ffe0;

 return omap4iss_video_init(&resizer->video_out, "ISP resizer a");
}
