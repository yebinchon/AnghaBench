
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_fwnode_endpoint {int bus_type; } ;
struct media_link {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct csi_priv {int lock; int csi_id; int ipu; int * format_mbus; int csi; TYPE_1__ sd; struct v4l2_fwnode_endpoint upstream_ep; } ;


 size_t CSI_SINK_PAD ;
 int csi_get_upstream_endpoint (struct csi_priv*,struct v4l2_fwnode_endpoint*) ;
 int imx_media_find_mipi_csi2_channel (int *) ;
 int ipu_csi_set_mipi_datatype (int ,int,int *) ;
 int ipu_set_csi_src_mux (int ,int ,int) ;
 int is_parallel_bus (struct v4l2_fwnode_endpoint*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_err (TYPE_1__*,char*) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_link_validate_default (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int csi_link_validate(struct v4l2_subdev *sd,
        struct media_link *link,
        struct v4l2_subdev_format *source_fmt,
        struct v4l2_subdev_format *sink_fmt)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_fwnode_endpoint upstream_ep = { .bus_type = 0 };
 bool is_csi2;
 int ret;

 ret = v4l2_subdev_link_validate_default(sd, link,
      source_fmt, sink_fmt);
 if (ret)
  return ret;

 ret = csi_get_upstream_endpoint(priv, &upstream_ep);
 if (ret) {
  v4l2_err(&priv->sd, "failed to find upstream endpoint\n");
  return ret;
 }

 mutex_lock(&priv->lock);

 priv->upstream_ep = upstream_ep;
 is_csi2 = !is_parallel_bus(&upstream_ep);
 if (is_csi2) {
  int vc_num = 0;
  ipu_csi_set_mipi_datatype(priv->csi, vc_num,
       &priv->format_mbus[CSI_SINK_PAD]);
 }


 ipu_set_csi_src_mux(priv->ipu, priv->csi_id, is_csi2);

 mutex_unlock(&priv->lock);
 return ret;
}
