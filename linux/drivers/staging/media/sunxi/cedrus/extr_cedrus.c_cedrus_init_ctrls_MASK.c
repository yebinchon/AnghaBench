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
struct v4l2_ctrl_handler {int error; } ;
struct v4l2_ctrl {int dummy; } ;
struct cedrus_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct cedrus_ctx {TYPE_1__ fh; struct v4l2_ctrl** ctrls; struct v4l2_ctrl_handler hdl; } ;
typedef  int /*<<< orphan*/  ctrl ;
struct TYPE_4__ {int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int CEDRUS_CONTROLS_COUNT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* cedrus_controls ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl**) ; 
 struct v4l2_ctrl** FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*) ; 
 struct v4l2_ctrl* FUNC5 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct cedrus_dev *dev, struct cedrus_ctx *ctx)
{
	struct v4l2_ctrl_handler *hdl = &ctx->hdl;
	struct v4l2_ctrl *ctrl;
	unsigned int ctrl_size;
	unsigned int i;

	FUNC3(hdl, CEDRUS_CONTROLS_COUNT);
	if (hdl->error) {
		FUNC6(&dev->v4l2_dev,
			 "Failed to initialize control handler\n");
		return hdl->error;
	}

	ctrl_size = sizeof(ctrl) * CEDRUS_CONTROLS_COUNT + 1;

	ctx->ctrls = FUNC1(ctrl_size, GFP_KERNEL);
	if (!ctx->ctrls)
		return -ENOMEM;

	for (i = 0; i < CEDRUS_CONTROLS_COUNT; i++) {
		ctrl = FUNC5(hdl, &cedrus_controls[i].cfg,
					    NULL);
		if (hdl->error) {
			FUNC6(&dev->v4l2_dev,
				 "Failed to create new custom control\n");

			FUNC2(hdl);
			FUNC0(ctx->ctrls);
			return hdl->error;
		}

		ctx->ctrls[i] = ctrl;
	}

	ctx->fh.ctrl_handler = hdl;
	FUNC4(hdl);

	return 0;
}