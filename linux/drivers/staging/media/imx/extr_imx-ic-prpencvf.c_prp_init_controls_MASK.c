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
struct v4l2_ctrl_handler {int error; } ;
struct prp_priv {struct v4l2_ctrl_handler ctrl_hdlr; struct imx_ic_priv* ic_priv; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct imx_ic_priv {TYPE_1__ sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_ROTATE ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  prp_ctrl_ops ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct prp_priv *priv)
{
	struct imx_ic_priv *ic_priv = priv->ic_priv;
	struct v4l2_ctrl_handler *hdlr = &priv->ctrl_hdlr;
	int ret;

	FUNC1(hdlr, 3);

	FUNC3(hdlr, &prp_ctrl_ops, V4L2_CID_HFLIP,
			  0, 1, 1, 0);
	FUNC3(hdlr, &prp_ctrl_ops, V4L2_CID_VFLIP,
			  0, 1, 1, 0);
	FUNC3(hdlr, &prp_ctrl_ops, V4L2_CID_ROTATE,
			  0, 270, 90, 0);

	ic_priv->sd.ctrl_handler = hdlr;

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