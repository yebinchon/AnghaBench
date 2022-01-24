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
struct csi_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_NUM_PADS ; 
 int EINVAL ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct csi_priv*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct csi_priv* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
		       struct v4l2_subdev_pad_config *cfg,
		       struct v4l2_subdev_format *sdformat)
{
	struct csi_priv *priv = FUNC3(sd);
	struct v4l2_mbus_framefmt *fmt;
	int ret = 0;

	if (sdformat->pad >= CSI_NUM_PADS)
		return -EINVAL;

	FUNC1(&priv->lock);

	fmt = FUNC0(priv, cfg, sdformat->pad, sdformat->which);
	if (!fmt) {
		ret = -EINVAL;
		goto out;
	}

	sdformat->format = *fmt;
out:
	FUNC2(&priv->lock);
	return ret;
}