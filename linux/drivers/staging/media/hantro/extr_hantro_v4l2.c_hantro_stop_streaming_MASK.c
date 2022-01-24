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
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct hantro_ctx {TYPE_1__* codec_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (struct hantro_ctx*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  v4l2_m2m_dst_buf_remove ; 
 int /*<<< orphan*/  v4l2_m2m_src_buf_remove ; 
 struct hantro_ctx* FUNC4 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC5(struct vb2_queue *q)
{
	struct hantro_ctx *ctx = FUNC4(q);

	if (FUNC2(q)) {
		if (ctx->codec_ops && ctx->codec_ops->exit)
			ctx->codec_ops->exit(ctx);
	}

	/*
	 * The mem2mem framework calls v4l2_m2m_cancel_job before
	 * .stop_streaming, so there isn't any job running and
	 * it is safe to return all the buffers.
	 */
	if (FUNC0(q->type))
		FUNC1(q, v4l2_m2m_src_buf_remove);
	else
		FUNC1(q, v4l2_m2m_dst_buf_remove);
}