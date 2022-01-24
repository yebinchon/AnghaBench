#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  num_data_lanes; } ;
struct TYPE_4__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct v4l2_async_subdev {int dummy; } ;
struct device {int dummy; } ;
struct csi_state {TYPE_1__ bus; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct v4l2_subdev* FUNC2 (struct device*) ; 
 struct csi_state* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				    struct v4l2_fwnode_endpoint *ep,
				    struct v4l2_async_subdev *asd)
{
	struct v4l2_subdev *mipi_sd = FUNC2(dev);
	struct csi_state *state = FUNC3(mipi_sd);

	if (ep->bus_type != V4L2_MBUS_CSI2_DPHY) {
		FUNC1(dev, "invalid bus type, must be MIPI CSI2\n");
		return -EINVAL;
	}

	state->bus = ep->bus.mipi_csi2;

	FUNC0(state->dev, "data lanes: %d\n", state->bus.num_data_lanes);
	FUNC0(state->dev, "flags: 0x%08x\n", state->bus.flags);

	return 0;
}