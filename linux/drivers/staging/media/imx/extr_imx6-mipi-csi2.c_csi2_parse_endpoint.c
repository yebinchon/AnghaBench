
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_5__ {int flags; int num_data_lanes; } ;
struct TYPE_4__ {TYPE_2__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_1__ bus; } ;
struct TYPE_6__ {int fwnode; } ;
struct v4l2_async_subdev {TYPE_3__ match; } ;
struct device {int dummy; } ;
struct csi2_dev {TYPE_2__ bus; int dev; int sd; } ;


 int EINVAL ;
 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int dev_dbg (int ,char*,int ) ;
 struct v4l2_subdev* dev_get_drvdata (struct device*) ;
 int fwnode_device_is_available (int ) ;
 struct csi2_dev* sd_to_dev (struct v4l2_subdev*) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int csi2_parse_endpoint(struct device *dev,
          struct v4l2_fwnode_endpoint *vep,
          struct v4l2_async_subdev *asd)
{
 struct v4l2_subdev *sd = dev_get_drvdata(dev);
 struct csi2_dev *csi2 = sd_to_dev(sd);

 if (!fwnode_device_is_available(asd->match.fwnode)) {
  v4l2_err(&csi2->sd, "remote is not available\n");
  return -EINVAL;
 }

 if (vep->bus_type != V4L2_MBUS_CSI2_DPHY) {
  v4l2_err(&csi2->sd, "invalid bus type, must be MIPI CSI2\n");
  return -EINVAL;
 }

 csi2->bus = vep->bus.mipi_csi2;

 dev_dbg(csi2->dev, "data lanes: %d\n", csi2->bus.num_data_lanes);
 dev_dbg(csi2->dev, "flags: 0x%08x\n", csi2->bus.flags);

 return 0;
}
