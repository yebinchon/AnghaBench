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
struct imx_media_fim {void** icap_ctrl; void** ctrl; struct v4l2_ctrl_handler ctrl_handler; } ;

/* Variables and functions */
 int FIM_NUM_CONTROLS ; 
 int FIM_NUM_ICAP_CONTROLS ; 
 int /*<<< orphan*/ * fim_ctrl ; 
 int /*<<< orphan*/ * fim_icap_ctrl ; 
 int /*<<< orphan*/  FUNC0 (int,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_ctrl_handler*,int) ; 
 void* FUNC3 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct imx_media_fim *fim)
{
	struct v4l2_ctrl_handler *hdlr = &fim->ctrl_handler;
	int i, ret;

	FUNC2(hdlr, FIM_NUM_CONTROLS + FIM_NUM_ICAP_CONTROLS);

	for (i = 0; i < FIM_NUM_CONTROLS; i++)
		fim->ctrl[i] = FUNC3(hdlr,
						    &fim_ctrl[i],
						    NULL);
	for (i = 0; i < FIM_NUM_ICAP_CONTROLS; i++)
		fim->icap_ctrl[i] = FUNC3(hdlr,
							 &fim_icap_ctrl[i],
							 NULL);
	if (hdlr->error) {
		ret = hdlr->error;
		goto err_free;
	}

	FUNC0(FIM_NUM_CONTROLS, fim->ctrl);
	FUNC0(FIM_NUM_ICAP_CONTROLS, fim->icap_ctrl);

	return 0;
err_free:
	FUNC1(hdlr);
	return ret;
}