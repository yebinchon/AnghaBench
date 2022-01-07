
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct media_entity {scalar_t__ function; } ;
struct v4l2_subdev {TYPE_3__* dev; struct media_entity entity; } ;
struct v4l2_fwnode_endpoint {int dummy; } ;
struct media_pad {int index; int entity; } ;
struct TYPE_5__ {struct media_entity entity; } ;
struct imx7_csi {TYPE_2__ sd; TYPE_1__* src_sd; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct TYPE_4__ {struct media_entity entity; } ;


 int ENODEV ;
 int EPIPE ;
 scalar_t__ MEDIA_ENT_F_VID_IF_BRIDGE ;
 scalar_t__ MEDIA_ENT_F_VID_MUX ;
 struct media_pad* imx_media_pipeline_pad (struct media_entity*,int ,int ,int) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 struct device_node* of_graph_get_port_by_id (int ,int ) ;
 int of_node_put (struct device_node*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
       struct v4l2_fwnode_endpoint *ep,
       bool skip_mux)
{
 struct device_node *endpoint, *port;
 struct media_entity *src;
 struct v4l2_subdev *sd;
 struct media_pad *pad;

 if (!csi->src_sd)
  return -EPIPE;

 src = &csi->src_sd->entity;





 if (src->function != MEDIA_ENT_F_VID_IF_BRIDGE &&
     src->function != MEDIA_ENT_F_VID_MUX)
  src = &csi->sd.entity;

skip_video_mux:

 pad = imx_media_pipeline_pad(src, 0, 0, 1);
 if (!pad)
  return -ENODEV;

 sd = media_entity_to_v4l2_subdev(pad->entity);


 if (skip_mux && src->function == MEDIA_ENT_F_VID_MUX) {
  src = &sd->entity;
  goto skip_video_mux;
 }





 port = of_graph_get_port_by_id(sd->dev->of_node, pad->index);
 if (!port)
  return -ENODEV;

 endpoint = of_get_next_child(port, ((void*)0));
 of_node_put(port);
 if (!endpoint)
  return -ENODEV;

 v4l2_fwnode_endpoint_parse(of_fwnode_handle(endpoint), ep);
 of_node_put(endpoint);

 return 0;
}
