
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_entity {int * ops; } ;
struct v4l2_subdev {int flags; int grp_id; int name; int * internal_ops; struct media_entity entity; } ;
struct media_pad {void* flags; } ;
struct TYPE_2__ {int capture_mem; int bpl_alignment; int bpl_zero_padding; int bpl_max; int iss; int * ops; int type; } ;
struct iss_ipipeif_device {TYPE_1__ video_out; int input; struct media_pad* pads; struct v4l2_subdev subdev; } ;


 int BIT (int) ;
 int IPIPEIF_INPUT_NONE ;
 int IPIPEIF_PADS_NUM ;
 size_t IPIPEIF_PAD_SINK ;
 size_t IPIPEIF_PAD_SOURCE_ISIF_SF ;
 size_t IPIPEIF_PAD_SOURCE_VP ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int PAGE_ALIGN (int) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int ipipeif_init_formats (struct v4l2_subdev*,int *) ;
 int ipipeif_media_ops ;
 int ipipeif_v4l2_internal_ops ;
 int ipipeif_v4l2_ops ;
 int ipipeif_video_ops ;
 int media_entity_pads_init (struct media_entity*,int ,struct media_pad*) ;
 int omap4iss_video_init (TYPE_1__*,char*) ;
 int strscpy (int ,char*,int) ;
 int to_iss_device (struct iss_ipipeif_device*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct iss_ipipeif_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int ipipeif_init_entities(struct iss_ipipeif_device *ipipeif)
{
 struct v4l2_subdev *sd = &ipipeif->subdev;
 struct media_pad *pads = ipipeif->pads;
 struct media_entity *me = &sd->entity;
 int ret;

 ipipeif->input = IPIPEIF_INPUT_NONE;

 v4l2_subdev_init(sd, &ipipeif_v4l2_ops);
 sd->internal_ops = &ipipeif_v4l2_internal_ops;
 strscpy(sd->name, "OMAP4 ISS ISP IPIPEIF", sizeof(sd->name));
 sd->grp_id = BIT(16);
 v4l2_set_subdevdata(sd, ipipeif);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 pads[IPIPEIF_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 pads[IPIPEIF_PAD_SOURCE_ISIF_SF].flags = MEDIA_PAD_FL_SOURCE;
 pads[IPIPEIF_PAD_SOURCE_VP].flags = MEDIA_PAD_FL_SOURCE;

 me->ops = &ipipeif_media_ops;
 ret = media_entity_pads_init(me, IPIPEIF_PADS_NUM, pads);
 if (ret < 0)
  return ret;

 ipipeif_init_formats(sd, ((void*)0));

 ipipeif->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 ipipeif->video_out.ops = &ipipeif_video_ops;
 ipipeif->video_out.iss = to_iss_device(ipipeif);
 ipipeif->video_out.capture_mem = PAGE_ALIGN(4096 * 4096) * 3;
 ipipeif->video_out.bpl_alignment = 32;
 ipipeif->video_out.bpl_zero_padding = 1;
 ipipeif->video_out.bpl_max = 0x1ffe0;

 return omap4iss_video_init(&ipipeif->video_out, "ISP IPIPEIF");
}
