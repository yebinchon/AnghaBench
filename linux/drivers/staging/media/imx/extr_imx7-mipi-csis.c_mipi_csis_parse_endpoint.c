
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int flags; int num_data_lanes; } ;
struct TYPE_4__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct v4l2_async_subdev {int dummy; } ;
struct device {int dummy; } ;
struct csi_state {TYPE_1__ bus; int dev; } ;


 int EINVAL ;
 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (struct device*,char*) ;
 struct v4l2_subdev* dev_get_drvdata (struct device*) ;
 struct csi_state* mipi_sd_to_csis_state (struct v4l2_subdev*) ;

__attribute__((used)) static int mipi_csis_parse_endpoint(struct device *dev,
        struct v4l2_fwnode_endpoint *ep,
        struct v4l2_async_subdev *asd)
{
 struct v4l2_subdev *mipi_sd = dev_get_drvdata(dev);
 struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);

 if (ep->bus_type != V4L2_MBUS_CSI2_DPHY) {
  dev_err(dev, "invalid bus type, must be MIPI CSI2\n");
  return -EINVAL;
 }

 state->bus = ep->bus.mipi_csi2;

 dev_dbg(state->dev, "data lanes: %d\n", state->bus.num_data_lanes);
 dev_dbg(state->dev, "flags: 0x%08x\n", state->bus.flags);

 return 0;
}
