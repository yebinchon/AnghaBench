#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  num_data_lanes; } ;
struct TYPE_4__ {TYPE_2__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_1__ bus; } ;
struct TYPE_6__ {int /*<<< orphan*/  fwnode; } ;
struct v4l2_async_subdev {TYPE_3__ match; } ;
struct device {int dummy; } ;
struct csi2_dev {TYPE_2__ bus; int /*<<< orphan*/  dev; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct csi2_dev* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
			       struct v4l2_fwnode_endpoint *vep,
			       struct v4l2_async_subdev *asd)
{
	struct v4l2_subdev *sd = FUNC1(dev);
	struct csi2_dev *csi2 = FUNC3(sd);

	if (!FUNC2(asd->match.fwnode)) {
		FUNC4(&csi2->sd, "remote is not available\n");
		return -EINVAL;
	}

	if (vep->bus_type != V4L2_MBUS_CSI2_DPHY) {
		FUNC4(&csi2->sd, "invalid bus type, must be MIPI CSI2\n");
		return -EINVAL;
	}

	csi2->bus = vep->bus.mipi_csi2;

	FUNC0(csi2->dev, "data lanes: %d\n", csi2->bus.num_data_lanes);
	FUNC0(csi2->dev, "flags: 0x%08x\n", csi2->bus.flags);

	return 0;
}