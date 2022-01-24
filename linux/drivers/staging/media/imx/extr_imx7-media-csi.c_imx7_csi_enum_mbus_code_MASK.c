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
struct v4l2_subdev_mbus_code_enum {int pad; int /*<<< orphan*/  code; int /*<<< orphan*/  index; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;
struct imx7_csi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SEL_ANY ; 
 int EINVAL ; 
#define  IMX7_CSI_PAD_SINK 129 
#define  IMX7_CSI_PAD_SRC 128 
 struct v4l2_mbus_framefmt* FUNC0 (struct imx7_csi*,struct v4l2_subdev_pad_config*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct imx7_csi* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				   struct v4l2_subdev_pad_config *cfg,
				   struct v4l2_subdev_mbus_code_enum *code)
{
	struct imx7_csi *csi = FUNC4(sd);
	struct v4l2_mbus_framefmt *in_fmt;
	int ret = 0;

	FUNC2(&csi->lock);

	in_fmt = FUNC0(csi, cfg, IMX7_CSI_PAD_SINK, code->which);

	switch (code->pad) {
	case IMX7_CSI_PAD_SINK:
		ret = FUNC1(&code->code, code->index,
						 CS_SEL_ANY, true);
		break;
	case IMX7_CSI_PAD_SRC:
		if (code->index != 0) {
			ret = -EINVAL;
			goto out_unlock;
		}

		code->code = in_fmt->code;
		break;
	default:
		ret = -EINVAL;
	}

out_unlock:
	FUNC3(&csi->lock);

	return ret;
}