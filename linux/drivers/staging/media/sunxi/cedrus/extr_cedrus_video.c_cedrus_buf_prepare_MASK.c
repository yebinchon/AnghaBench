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
struct v4l2_pix_format {scalar_t__ sizeimage; } ;
struct cedrus_ctx {struct v4l2_pix_format dst_fmt; struct v4l2_pix_format src_fmt; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct cedrus_ctx* FUNC1 (struct vb2_queue*) ; 
 scalar_t__ FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct vb2_queue *vq = vb->vb2_queue;
	struct cedrus_ctx *ctx = FUNC1(vq);
	struct v4l2_pix_format *pix_fmt;

	if (FUNC0(vq->type))
		pix_fmt = &ctx->src_fmt;
	else
		pix_fmt = &ctx->dst_fmt;

	if (FUNC2(vb, 0) < pix_fmt->sizeimage)
		return -EINVAL;

	FUNC3(vb, 0, pix_fmt->sizeimage);

	return 0;
}