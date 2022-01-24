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
typedef  scalar_t__ u32 ;
struct v4l2_vp8_segment_header {int flags; scalar_t__* quant_update; } ;
struct v4l2_vp8_quantization_header {scalar_t__ uv_ac_delta; scalar_t__ uv_dc_delta; scalar_t__ y2_ac_delta; scalar_t__ y2_dc_delta; scalar_t__ y_dc_delta; scalar_t__ y_ac_qi; } ;
struct v4l2_ctrl_vp8_frame_header {struct v4l2_vp8_segment_header segment_header; struct v4l2_vp8_quantization_header quant_header; } ;
struct hantro_dev {int dummy; } ;
struct hantro_ctx {struct hantro_dev* dev; } ;

/* Variables and functions */
 int V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE ; 
 int V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hantro_dev*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * vp8_dec_quant ; 
 int /*<<< orphan*/ * vp8_dec_quant_delta ; 

__attribute__((used)) static void FUNC2(struct hantro_ctx *ctx,
		   const struct v4l2_ctrl_vp8_frame_header *hdr)
{
	const struct v4l2_vp8_quantization_header *q = &hdr->quant_header;
	const struct v4l2_vp8_segment_header *seg = &hdr->segment_header;
	struct hantro_dev *vpu = ctx->dev;
	unsigned int i;

	if (!(seg->flags & V4L2_VP8_SEGMENT_HEADER_FLAG_ENABLED)) {
		FUNC1(vpu, &vp8_dec_quant[0], q->y_ac_qi);
	} else if (seg->flags & V4L2_VP8_SEGMENT_HEADER_FLAG_DELTA_VALUE_MODE) {
		for (i = 0; i < 4; i++) {
			u32 quant = FUNC0(q->y_ac_qi + seg->quant_update[i],
					  0, 127);

			FUNC1(vpu, &vp8_dec_quant[i], quant);
		}
	} else {
		for (i = 0; i < 4; i++)
			FUNC1(vpu, &vp8_dec_quant[i],
					 seg->quant_update[i]);
	}

	FUNC1(vpu, &vp8_dec_quant_delta[0], q->y_dc_delta);
	FUNC1(vpu, &vp8_dec_quant_delta[1], q->y2_dc_delta);
	FUNC1(vpu, &vp8_dec_quant_delta[2], q->y2_ac_delta);
	FUNC1(vpu, &vp8_dec_quant_delta[3], q->uv_dc_delta);
	FUNC1(vpu, &vp8_dec_quant_delta[4], q->uv_ac_delta);
}