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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct imx7_csi {int /*<<< orphan*/ * cc; } ;

/* Variables and functions */
 int IMX7_CSI_PADS_NUM ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int FUNC0 (struct v4l2_mbus_framefmt*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct imx7_csi* FUNC1 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			     struct v4l2_subdev_pad_config *cfg)
{
	struct imx7_csi *csi = FUNC1(sd);
	struct v4l2_mbus_framefmt *mf;
	int ret;
	int i;

	for (i = 0; i < IMX7_CSI_PADS_NUM; i++) {
		mf = FUNC2(sd, cfg, i);

		ret = FUNC0(mf, 800, 600, 0, V4L2_FIELD_NONE,
					      &csi->cc[i]);
		if (ret < 0)
			return ret;
	}

	return 0;
}