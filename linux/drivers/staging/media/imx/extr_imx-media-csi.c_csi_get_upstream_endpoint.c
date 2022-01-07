
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct media_entity {scalar_t__ function; } ;
struct v4l2_subdev {scalar_t__ grp_id; TYPE_2__* dev; struct media_entity entity; } ;
struct v4l2_fwnode_endpoint {int dummy; } ;
struct media_pad {int index; int entity; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct media_entity entity; } ;
struct csi_priv {TYPE_1__ sd; struct v4l2_subdev* src_sd; } ;
struct TYPE_4__ {int of_node; } ;


 int CONFIG_OF ;
 int ENODEV ;
 int ENXIO ;
 int EPIPE ;
 scalar_t__ IMX_MEDIA_GRP_ID_CSI2 ;
 int IS_ENABLED (int ) ;
 int IS_ERR (struct v4l2_subdev*) ;
 scalar_t__ MEDIA_ENT_F_VID_MUX ;
 struct media_pad* imx_media_pipeline_pad (struct media_entity*,int ,int ,int) ;
 struct v4l2_subdev* imx_media_pipeline_subdev (struct media_entity*,scalar_t__,int) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int of_fwnode_handle (struct device_node*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 struct device_node* of_graph_get_port_by_id (int ,int ) ;
 int of_node_put (struct device_node*) ;
 int v4l2_fwnode_endpoint_parse (int ,struct v4l2_fwnode_endpoint*) ;

__attribute__((used)) static int csi_get_upstream_endpoint(struct csi_priv *priv,
         struct v4l2_fwnode_endpoint *ep)
{
 struct device_node *endpoint, *port;
 struct media_entity *src;
 struct v4l2_subdev *sd;
 struct media_pad *pad;

 if (!IS_ENABLED(CONFIG_OF))
  return -ENXIO;

 if (!priv->src_sd)
  return -EPIPE;

 sd = priv->src_sd;
 src = &sd->entity;

 if (src->function == MEDIA_ENT_F_VID_MUX) {





  sd = imx_media_pipeline_subdev(src, IMX_MEDIA_GRP_ID_CSI2,
            1);
  if (!IS_ERR(sd))
   src = &sd->entity;
 }





 if (src->function != MEDIA_ENT_F_VID_MUX &&
     sd->grp_id != IMX_MEDIA_GRP_ID_CSI2)
  src = &priv->sd.entity;


 pad = imx_media_pipeline_pad(src, 0, 0, 1);
 if (!pad)
  return -ENODEV;

 sd = media_entity_to_v4l2_subdev(pad->entity);





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
