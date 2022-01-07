
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; } ;
struct media_link {int dummy; } ;
struct imx7_csi {int is_csi2; int lock; struct v4l2_fwnode_endpoint upstream_ep; int sd; } ;


 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int imx7_csi_get_upstream_endpoint (struct imx7_csi*,struct v4l2_fwnode_endpoint*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_err (int *,char*) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_link_validate_default (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int imx7_csi_pad_link_validate(struct v4l2_subdev *sd,
          struct media_link *link,
          struct v4l2_subdev_format *source_fmt,
          struct v4l2_subdev_format *sink_fmt)
{
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 struct v4l2_fwnode_endpoint upstream_ep = {};
 int ret;

 ret = v4l2_subdev_link_validate_default(sd, link, source_fmt, sink_fmt);
 if (ret)
  return ret;

 ret = imx7_csi_get_upstream_endpoint(csi, &upstream_ep, 1);
 if (ret) {
  v4l2_err(&csi->sd, "failed to find upstream endpoint\n");
  return ret;
 }

 mutex_lock(&csi->lock);

 csi->upstream_ep = upstream_ep;
 csi->is_csi2 = (upstream_ep.bus_type == V4L2_MBUS_CSI2_DPHY);

 mutex_unlock(&csi->lock);

 return 0;
}
