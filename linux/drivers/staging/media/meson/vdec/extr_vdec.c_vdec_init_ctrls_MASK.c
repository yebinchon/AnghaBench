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
struct v4l2_ctrl_handler {int error; } ;
struct amvdec_session {int /*<<< orphan*/  ctrl_min_buf_capture; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl_handler*) ; 
 int FUNC1 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct amvdec_session *sess)
{
	struct v4l2_ctrl_handler *ctrl_handler = &sess->ctrl_handler;
	int ret;

	ret = FUNC1(ctrl_handler, 1);
	if (ret)
		return ret;

	sess->ctrl_min_buf_capture =
		FUNC2(ctrl_handler, NULL,
				  V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 32, 1,
				  1);

	ret = ctrl_handler->error;
	if (ret) {
		FUNC0(ctrl_handler);
		return ret;
	}

	return 0;
}