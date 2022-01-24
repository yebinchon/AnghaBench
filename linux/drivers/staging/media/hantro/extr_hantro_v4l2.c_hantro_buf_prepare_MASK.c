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
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct hantro_ctx {int /*<<< orphan*/  dst_fmt; int /*<<< orphan*/  vpu_dst_fmt; int /*<<< orphan*/  src_fmt; int /*<<< orphan*/  vpu_src_fmt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hantro_ctx* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_buffer *vb)
{
	struct vb2_queue *vq = vb->vb2_queue;
	struct hantro_ctx *ctx = FUNC2(vq);

	if (FUNC0(vq->type))
		return FUNC1(vb, ctx->vpu_src_fmt,
						  &ctx->src_fmt);

	return FUNC1(vb, ctx->vpu_dst_fmt, &ctx->dst_fmt);
}