#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct hantro_dev {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct hantro_ctx {TYPE_1__ ctrl_handler; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int codec; TYPE_2__ cfg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*) ; 
 TYPE_6__* controls ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hantro_dev *vpu,
			      struct hantro_ctx *ctx,
			      int allowed_codecs)
{
	int i, num_ctrls = FUNC0(controls);

	FUNC2(&ctx->ctrl_handler, num_ctrls);

	for (i = 0; i < num_ctrls; i++) {
		if (!(allowed_codecs & controls[i].codec))
			continue;

		FUNC4(&ctx->ctrl_handler,
				     &controls[i].cfg, NULL);
		if (ctx->ctrl_handler.error) {
			FUNC5("Adding control (%d) failed %d\n",
				controls[i].cfg.id,
				ctx->ctrl_handler.error);
			FUNC1(&ctx->ctrl_handler);
			return ctx->ctrl_handler.error;
		}
	}
	return FUNC3(&ctx->ctrl_handler);
}