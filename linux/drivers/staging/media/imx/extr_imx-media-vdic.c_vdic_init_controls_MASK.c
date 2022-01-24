#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct vdic_priv {TYPE_1__ sd; struct v4l2_ctrl_handler ctrl_hdlr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIGH_MOTION ; 
 int /*<<< orphan*/  V4L2_CID_DEINTERLACING_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdic_ctrl_motion_menu ; 
 int /*<<< orphan*/  vdic_ctrl_ops ; 

__attribute__((used)) static int FUNC4(struct vdic_priv *priv)
{
	struct v4l2_ctrl_handler *hdlr = &priv->ctrl_hdlr;
	int ret;

	FUNC1(hdlr, 1);

	FUNC3(hdlr, &vdic_ctrl_ops,
				     V4L2_CID_DEINTERLACING_MODE,
				     HIGH_MOTION, 0, HIGH_MOTION,
				     vdic_ctrl_motion_menu);

	priv->sd.ctrl_handler = hdlr;

	if (hdlr->error) {
		ret = hdlr->error;
		goto out_free;
	}

	FUNC2(hdlr);
	return 0;

out_free:
	FUNC0(hdlr);
	return ret;
}