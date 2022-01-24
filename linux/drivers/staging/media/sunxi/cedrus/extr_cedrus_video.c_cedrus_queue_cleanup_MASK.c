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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  req; } ;
struct TYPE_6__ {TYPE_2__ req_obj; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct cedrus_ctx {int /*<<< orphan*/  hdl; TYPE_1__ fh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 struct cedrus_ctx* FUNC5 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC6(struct vb2_queue *vq, u32 state)
{
	struct cedrus_ctx *ctx = FUNC5(vq);
	struct vb2_v4l2_buffer *vbuf;

	for (;;) {
		if (FUNC0(vq->type))
			vbuf = FUNC4(ctx->fh.m2m_ctx);
		else
			vbuf = FUNC3(ctx->fh.m2m_ctx);

		if (!vbuf)
			return;

		FUNC1(vbuf->vb2_buf.req_obj.req,
					   &ctx->hdl);
		FUNC2(vbuf, state);
	}
}