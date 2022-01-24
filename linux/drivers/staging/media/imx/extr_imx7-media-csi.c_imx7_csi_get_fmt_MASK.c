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
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct imx7_csi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct imx7_csi*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct imx7_csi* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			    struct v4l2_subdev_pad_config *cfg,
			    struct v4l2_subdev_format *sdformat)
{
	struct imx7_csi *csi = FUNC3(sd);
	struct v4l2_mbus_framefmt *fmt;
	int ret = 0;

	FUNC1(&csi->lock);

	fmt = FUNC0(csi, cfg, sdformat->pad, sdformat->which);
	if (!fmt) {
		ret = -EINVAL;
		goto out_unlock;
	}

	sdformat->format = *fmt;

out_unlock:
	FUNC2(&csi->lock);

	return ret;
}