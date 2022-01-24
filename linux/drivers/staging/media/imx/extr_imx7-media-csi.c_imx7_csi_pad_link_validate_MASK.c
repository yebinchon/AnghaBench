#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; } ;
struct media_link {int dummy; } ;
struct imx7_csi {int is_csi2; int /*<<< orphan*/  lock; struct v4l2_fwnode_endpoint upstream_ep; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int FUNC0 (struct imx7_csi*,struct v4l2_fwnode_endpoint*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct imx7_csi* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd,
				      struct media_link *link,
				      struct v4l2_subdev_format *source_fmt,
				      struct v4l2_subdev_format *sink_fmt)
{
	struct imx7_csi *csi = FUNC4(sd);
	struct v4l2_fwnode_endpoint upstream_ep = {};
	int ret;

	ret = FUNC5(sd, link, source_fmt, sink_fmt);
	if (ret)
		return ret;

	ret = FUNC0(csi, &upstream_ep, true);
	if (ret) {
		FUNC3(&csi->sd, "failed to find upstream endpoint\n");
		return ret;
	}

	FUNC1(&csi->lock);

	csi->upstream_ep = upstream_ep;
	csi->is_csi2 = (upstream_ep.bus_type == V4L2_MBUS_CSI2_DPHY);

	FUNC2(&csi->lock);

	return 0;
}