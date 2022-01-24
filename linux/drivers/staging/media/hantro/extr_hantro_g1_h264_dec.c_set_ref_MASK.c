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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vb2_buffer {int dummy; } ;
struct v4l2_h264_dpb_entry {int flags; int /*<<< orphan*/  frame_num; int /*<<< orphan*/  pic_num; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * b1; int /*<<< orphan*/ * b0; } ;
struct TYPE_4__ {TYPE_1__ reflists; struct v4l2_h264_dpb_entry* dpb; } ;
struct hantro_ctx {TYPE_2__ h264_dec; struct hantro_dev* dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  G1_REG_BD_P_REF_PIC ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (int /*<<< orphan*/  const) ; 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 int FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/  const) ; 
 int FUNC10 (int /*<<< orphan*/  const) ; 
 int FUNC11 (int /*<<< orphan*/  const) ; 
 int FUNC12 (int /*<<< orphan*/  const) ; 
 int FUNC13 (int /*<<< orphan*/  const) ; 
 int FUNC14 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/  const) ; 
 int FUNC17 (int /*<<< orphan*/  const) ; 
 int FUNC18 (int /*<<< orphan*/  const) ; 
 int FUNC19 (int /*<<< orphan*/  const) ; 
 int FUNC20 (int /*<<< orphan*/  const) ; 
 int FUNC21 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  G1_REG_LT_REF ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G1_REG_VALID_REF ; 
 int HANTRO_H264_DPB_SIZE ; 
 int V4L2_H264_DPB_ENTRY_FLAG_ACTIVE ; 
 int V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ; 
 struct vb2_buffer* FUNC25 (struct hantro_ctx*,int) ; 
 int FUNC26 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC28(struct hantro_ctx *ctx)
{
	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
	const u8 *b0_reflist, *b1_reflist, *p_reflist;
	struct hantro_dev *vpu = ctx->dev;
	u32 dpb_longterm = 0;
	u32 dpb_valid = 0;
	int reg_num;
	u32 reg;
	int i;

	/*
	 * Set up bit maps of valid and long term DPBs.
	 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
	 */
	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
			dpb_valid |= FUNC0(HANTRO_H264_DPB_SIZE - 1 - i);

		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
			dpb_longterm |= FUNC0(HANTRO_H264_DPB_SIZE - 1 - i);
	}
	FUNC27(vpu, dpb_valid << 16, G1_REG_VALID_REF);
	FUNC27(vpu, dpb_longterm << 16, G1_REG_LT_REF);

	/*
	 * Set up reference frame picture numbers.
	 *
	 * Each G1_REG_REF_PIC(x) register contains numbers of two
	 * subsequential reference pictures.
	 */
	for (i = 0; i < HANTRO_H264_DPB_SIZE; i += 2) {
		reg = 0;
		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
			reg |= FUNC23(dpb[i].pic_num);
		else
			reg |= FUNC23(dpb[i].frame_num);

		if (dpb[i + 1].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
			reg |= FUNC24(dpb[i + 1].pic_num);
		else
			reg |= FUNC24(dpb[i + 1].frame_num);

		FUNC27(vpu, reg, FUNC22(i / 2));
	}

	b0_reflist = ctx->h264_dec.reflists.b0;
	b1_reflist = ctx->h264_dec.reflists.b1;
	p_reflist = ctx->h264_dec.reflists.p;

	/*
	 * Each G1_REG_BD_REF_PIC(x) register contains three entries
	 * of each forward and backward picture list.
	 */
	reg_num = 0;
	for (i = 0; i < 15; i += 3) {
		reg = FUNC12(b0_reflist[i]) |
		      FUNC13(b0_reflist[i + 1]) |
		      FUNC14(b0_reflist[i + 2]) |
		      FUNC9(b1_reflist[i]) |
		      FUNC10(b1_reflist[i + 1]) |
		      FUNC11(b1_reflist[i + 2]);
		FUNC27(vpu, reg, FUNC8(reg_num++));
	}

	/*
	 * G1_REG_BD_P_REF_PIC register contains last entries (index 15)
	 * of forward and backward reference picture lists and first 4 entries
	 * of P forward picture list.
	 */
	reg = FUNC3(b0_reflist[15]) |
	      FUNC2(b1_reflist[15]) |
	      FUNC4(p_reflist[0]) |
	      FUNC5(p_reflist[1]) |
	      FUNC6(p_reflist[2]) |
	      FUNC7(p_reflist[3]);
	FUNC27(vpu, reg, G1_REG_BD_P_REF_PIC);

	/*
	 * Each G1_REG_FWD_PIC(x) register contains six consecutive
	 * entries of P forward picture list, starting from index 4.
	 */
	reg_num = 0;
	for (i = 4; i < HANTRO_H264_DPB_SIZE; i += 6) {
		reg = FUNC16(p_reflist[i]) |
		      FUNC17(p_reflist[i + 1]) |
		      FUNC18(p_reflist[i + 2]) |
		      FUNC19(p_reflist[i + 3]) |
		      FUNC20(p_reflist[i + 4]) |
		      FUNC21(p_reflist[i + 5]);
		FUNC27(vpu, reg, FUNC15(reg_num++));
	}

	/* Set up addresses of DPB buffers. */
	for (i = 0; i < HANTRO_H264_DPB_SIZE; i++) {
		struct vb2_buffer *buf =  FUNC25(ctx, i);

		FUNC27(vpu, FUNC26(buf, 0),
				   FUNC1(i));
	}
}