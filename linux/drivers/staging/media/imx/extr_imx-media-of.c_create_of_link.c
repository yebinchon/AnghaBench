
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num_pads; TYPE_1__* pads; } ;
struct v4l2_subdev {TYPE_3__ entity; int name; int v4l2_dev; } ;
struct v4l2_fwnode_link {size_t local_port; int remote_port; int remote_node; } ;
struct imx_media_dev {int dummy; } ;
struct TYPE_5__ {int flags; } ;


 int EINVAL ;
 int MEDIA_PAD_FL_SINK ;
 struct v4l2_subdev* imx_media_find_subdev_by_fwnode (struct imx_media_dev*,int ) ;
 int media_create_pad_link (TYPE_3__*,int,TYPE_3__*,int,int ) ;
 scalar_t__ media_entity_find_link (TYPE_1__*,TYPE_1__*) ;
 int v4l2_info (int ,char*,int ,int,int ,int) ;

__attribute__((used)) static int create_of_link(struct imx_media_dev *imxmd,
     struct v4l2_subdev *sd,
     struct v4l2_fwnode_link *link)
{
 struct v4l2_subdev *remote, *src, *sink;
 int src_pad, sink_pad;

 if (link->local_port >= sd->entity.num_pads)
  return -EINVAL;

 remote = imx_media_find_subdev_by_fwnode(imxmd, link->remote_node);
 if (!remote)
  return 0;

 if (sd->entity.pads[link->local_port].flags & MEDIA_PAD_FL_SINK) {
  src = remote;
  src_pad = link->remote_port;
  sink = sd;
  sink_pad = link->local_port;
 } else {
  src = sd;
  src_pad = link->local_port;
  sink = remote;
  sink_pad = link->remote_port;
 }


 if (media_entity_find_link(&src->entity.pads[src_pad],
       &sink->entity.pads[sink_pad]))
  return 0;

 v4l2_info(sd->v4l2_dev, "%s:%d -> %s:%d\n",
    src->name, src_pad, sink->name, sink_pad);

 return media_create_pad_link(&src->entity, src_pad,
         &sink->entity, sink_pad, 0);
}
