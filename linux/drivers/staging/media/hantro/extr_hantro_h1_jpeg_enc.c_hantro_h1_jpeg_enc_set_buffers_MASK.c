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
struct vb2_buffer {int dummy; } ;
struct v4l2_pix_format_mplane {int num_planes; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  dma; } ;
struct TYPE_4__ {TYPE_1__ bounce_buffer; } ;
struct hantro_ctx {TYPE_2__ jpeg_enc; struct v4l2_pix_format_mplane src_fmt; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  H1_REG_ADDR_IN_PLANE_0 ; 
 int /*<<< orphan*/  H1_REG_ADDR_IN_PLANE_1 ; 
 int /*<<< orphan*/  H1_REG_ADDR_IN_PLANE_2 ; 
 int /*<<< orphan*/  H1_REG_ADDR_OUTPUT_STREAM ; 
 int /*<<< orphan*/  H1_REG_STR_BUF_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hantro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hantro_dev *vpu,
					   struct hantro_ctx *ctx,
					   struct vb2_buffer *src_buf)
{
	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
	dma_addr_t src[3];

	FUNC0(pix_fmt->num_planes > 3);

	FUNC2(vpu, ctx->jpeg_enc.bounce_buffer.dma,
			   H1_REG_ADDR_OUTPUT_STREAM);
	FUNC2(vpu, ctx->jpeg_enc.bounce_buffer.size,
			   H1_REG_STR_BUF_LIMIT);

	if (pix_fmt->num_planes == 1) {
		src[0] = FUNC1(src_buf, 0);
		/* single plane formats we supported are all interlaced */
		FUNC2(vpu, src[0], H1_REG_ADDR_IN_PLANE_0);
	} else if (pix_fmt->num_planes == 2) {
		src[0] = FUNC1(src_buf, 0);
		src[1] = FUNC1(src_buf, 1);
		FUNC2(vpu, src[0], H1_REG_ADDR_IN_PLANE_0);
		FUNC2(vpu, src[1], H1_REG_ADDR_IN_PLANE_1);
	} else {
		src[0] = FUNC1(src_buf, 0);
		src[1] = FUNC1(src_buf, 1);
		src[2] = FUNC1(src_buf, 2);
		FUNC2(vpu, src[0], H1_REG_ADDR_IN_PLANE_0);
		FUNC2(vpu, src[1], H1_REG_ADDR_IN_PLANE_1);
		FUNC2(vpu, src[2], H1_REG_ADDR_IN_PLANE_2);
	}
}