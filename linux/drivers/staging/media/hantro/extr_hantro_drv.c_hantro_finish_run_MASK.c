#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  req; } ;
struct TYPE_5__ {TYPE_1__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct hantro_ctx {TYPE_3__* dev; int /*<<< orphan*/  ctrl_handler; } ;
struct TYPE_6__ {int /*<<< orphan*/  watchdog_work; } ;

/* Variables and functions */
 struct vb2_v4l2_buffer* FUNC0 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct hantro_ctx *ctx)
{
	struct vb2_v4l2_buffer *src_buf;

	src_buf = FUNC0(ctx);
	FUNC3(src_buf->vb2_buf.req_obj.req,
				   &ctx->ctrl_handler);

	/* Kick the watchdog. */
	FUNC2(&ctx->dev->watchdog_work,
			      FUNC1(2000));
}