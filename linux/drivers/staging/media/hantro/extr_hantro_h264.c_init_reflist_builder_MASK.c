#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int /*<<< orphan*/  field; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_h264_dpb_entry {int flags; int /*<<< orphan*/  bottom_field_order_cnt; int /*<<< orphan*/  top_field_order_cnt; int /*<<< orphan*/  reference_ts; } ;
struct v4l2_ctrl_h264_decode_params {int /*<<< orphan*/  bottom_field_order_cnt; int /*<<< orphan*/  top_field_order_cnt; } ;
struct hantro_h264_reflist_builder {unsigned int* unordered_reflist; size_t num_valid; void** pocs; void* curpoc; struct v4l2_h264_dpb_entry const* dpb; } ;
struct TYPE_9__ {struct v4l2_ctrl_h264_decode_params* decode; } ;
struct TYPE_10__ {struct v4l2_h264_dpb_entry* dpb; TYPE_4__ ctrls; } ;
struct TYPE_8__ {TYPE_2__* m2m_ctx; } ;
struct hantro_ctx {TYPE_5__ h264_dec; TYPE_3__ fh; } ;
struct TYPE_6__ {struct vb2_queue q; } ;
struct TYPE_7__ {TYPE_1__ cap_q_ctx; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct v4l2_h264_dpb_entry*) ; 
 int V4L2_H264_DPB_ENTRY_FLAG_ACTIVE ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct hantro_h264_reflist_builder*,int /*<<< orphan*/ ,int) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vb2_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_queue*,int) ; 

__attribute__((used)) static void
FUNC7(struct hantro_ctx *ctx,
		     struct hantro_h264_reflist_builder *b)
{
	const struct v4l2_ctrl_h264_decode_params *dec_param;
	struct vb2_v4l2_buffer *buf = FUNC2(ctx);
	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
	struct vb2_queue *cap_q = &ctx->fh.m2m_ctx->cap_q_ctx.q;
	unsigned int i;

	dec_param = ctx->h264_dec.ctrls.decode;

	FUNC3(b, 0, sizeof(*b));
	b->dpb = dpb;
	b->curpoc = FUNC1(buf->field, dec_param->top_field_order_cnt,
			    dec_param->bottom_field_order_cnt);

	for (i = 0; i < FUNC0(ctx->h264_dec.dpb); i++) {
		int buf_idx;

		if (!(dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
			continue;

		buf_idx = FUNC5(cap_q, dpb[i].reference_ts, 0);
		if (buf_idx < 0)
			continue;

		buf = FUNC4(FUNC6(cap_q, buf_idx));
		b->pocs[i] = FUNC1(buf->field, dpb[i].top_field_order_cnt,
				     dpb[i].bottom_field_order_cnt);
		b->unordered_reflist[b->num_valid] = i;
		b->num_valid++;
	}

	for (i = b->num_valid; i < FUNC0(ctx->h264_dec.dpb); i++)
		b->unordered_reflist[i] = i;
}