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
typedef  int u32 ;
struct video_frame {int flags; int aux_addr; } ;
struct tegra_vde_h264_decoder_ctx {int pic_width_in_mbs; int pic_height_in_mbs; int level_idc; int log2_max_pic_order_cnt_lsb; int pic_order_cnt_type; int log2_max_frame_num; int pic_init_qp; int chroma_qp_index_offset; int num_ref_idx_l0_active_minus1; int num_ref_idx_l1_active_minus1; int /*<<< orphan*/  baseline_profile; scalar_t__ dpb_frames_nb; int /*<<< orphan*/  direct_8x8_inference_flag; int /*<<< orphan*/  constrained_intra_pred_flag; int /*<<< orphan*/  pic_order_present_flag; int /*<<< orphan*/  deblocking_filter_control_present_flag; int /*<<< orphan*/  dpb_ref_frames_with_earlier_poc_nb; } ;
struct TYPE_2__ {struct device* parent; } ;
struct tegra_vde {int iram_lists_addr; int /*<<< orphan*/  mbe; int /*<<< orphan*/  sxe; int /*<<< orphan*/  bsev; scalar_t__ iram; int /*<<< orphan*/  mce; int /*<<< orphan*/  tfe; int /*<<< orphan*/  frameid; int /*<<< orphan*/  vdma; int /*<<< orphan*/  ppe; TYPE_1__ miscdev; } ;
struct device {int dummy; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int BSE_CONFIG ; 
 int BSE_INT_ENB ; 
 int CMDQUE_CONTROL ; 
 int FLAG_B_FRAME ; 
 int FLAG_REFERENCE ; 
 size_t FUNC0 (int,int) ; 
 int INTR_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_vde*,struct video_frame*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_vde*,int,int) ; 
 int FUNC5 (struct tegra_vde*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_vde*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_vde*,struct video_frame*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tegra_vde*,scalar_t__,int) ; 
 int FUNC9 (struct tegra_vde*,int) ; 
 int FUNC10 (struct tegra_vde*) ; 
 int /*<<< orphan*/  FUNC11 (struct tegra_vde*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct tegra_vde *vde,
				      struct tegra_vde_h264_decoder_ctx *ctx,
				      struct video_frame *dpb_frames,
				      dma_addr_t bitstream_data_addr,
				      size_t bitstream_data_size,
				      unsigned int macroblocks_nb)
{
	struct device *dev = vde->miscdev.parent;
	u32 value;
	int err;

	FUNC6(vde, 0x000A, vde->sxe, 0xF0);
	FUNC6(vde, 0x000B, vde->bsev, CMDQUE_CONTROL);
	FUNC6(vde, 0x8002, vde->mbe, 0x50);
	FUNC6(vde, 0x000A, vde->mbe, 0xA0);
	FUNC6(vde, 0x000A, vde->ppe, 0x14);
	FUNC6(vde, 0x000A, vde->ppe, 0x28);
	FUNC6(vde, 0x0A00, vde->mce, 0x08);
	FUNC6(vde, 0x000A, vde->tfe, 0x00);
	FUNC6(vde, 0x0005, vde->vdma, 0x04);

	FUNC11(vde, 0x00000000, vde->vdma, 0x1C);
	FUNC11(vde, 0x00000000, vde->vdma, 0x00);
	FUNC11(vde, 0x00000007, vde->vdma, 0x04);
	FUNC11(vde, 0x00000007, vde->frameid, 0x200);
	FUNC11(vde, 0x00000005, vde->tfe, 0x04);
	FUNC11(vde, 0x00000000, vde->mbe, 0x84);
	FUNC11(vde, 0x00000010, vde->sxe, 0x08);
	FUNC11(vde, 0x00000150, vde->sxe, 0x54);
	FUNC11(vde, 0x0000054C, vde->sxe, 0x58);
	FUNC11(vde, 0x00000E34, vde->sxe, 0x5C);
	FUNC11(vde, 0x063C063C, vde->mce, 0x10);
	FUNC11(vde, 0x0003FC00, vde->bsev, INTR_STATUS);
	FUNC11(vde, 0x0000150D, vde->bsev, BSE_CONFIG);
	FUNC11(vde, 0x00000100, vde->bsev, BSE_INT_ENB);
	FUNC11(vde, 0x00000000, vde->bsev, 0x98);
	FUNC11(vde, 0x00000060, vde->bsev, 0x9C);

	FUNC2(vde->iram + 128, 0, macroblocks_nb / 2);

	FUNC3(vde, dpb_frames, ctx->dpb_frames_nb,
			     ctx->pic_width_in_mbs, ctx->pic_height_in_mbs);

	FUNC7(vde, dpb_frames,
				    ctx->dpb_frames_nb - 1,
				    ctx->dpb_ref_frames_with_earlier_poc_nb);

	/*
	 * The IRAM mapping is write-combine, ensure that CPU buffers have
	 * been flushed at this point.
	 */
	FUNC12();

	FUNC11(vde, 0x00000000, vde->bsev, 0x8C);
	FUNC11(vde, bitstream_data_addr + bitstream_data_size,
			 vde->bsev, 0x54);

	value = ctx->pic_width_in_mbs << 11 | ctx->pic_height_in_mbs << 3;

	FUNC11(vde, value, vde->bsev, 0x88);

	err = FUNC9(vde, false);
	if (err)
		return err;

	err = FUNC5(vde, 0x800003FC, false);
	if (err)
		return err;

	value = 0x01500000;
	value |= ((vde->iram_lists_addr + 512) >> 2) & 0xFFFF;

	err = FUNC5(vde, value, true);
	if (err)
		return err;

	err = FUNC5(vde, 0x840F054C, false);
	if (err)
		return err;

	err = FUNC5(vde, 0x80000080, false);
	if (err)
		return err;

	value = 0x0E340000 | ((vde->iram_lists_addr >> 2) & 0xFFFF);

	err = FUNC5(vde, value, true);
	if (err)
		return err;

	value = 0x00800005;
	value |= ctx->pic_width_in_mbs << 11;
	value |= ctx->pic_height_in_mbs << 3;

	FUNC11(vde, value, vde->sxe, 0x10);

	value = !ctx->baseline_profile << 17;
	value |= ctx->level_idc << 13;
	value |= ctx->log2_max_pic_order_cnt_lsb << 7;
	value |= ctx->pic_order_cnt_type << 5;
	value |= ctx->log2_max_frame_num;

	FUNC11(vde, value, vde->sxe, 0x40);

	value = ctx->pic_init_qp << 25;
	value |= !!(ctx->deblocking_filter_control_present_flag) << 2;
	value |= !!ctx->pic_order_present_flag;

	FUNC11(vde, value, vde->sxe, 0x44);

	value = ctx->chroma_qp_index_offset;
	value |= ctx->num_ref_idx_l0_active_minus1 << 5;
	value |= ctx->num_ref_idx_l1_active_minus1 << 10;
	value |= !!ctx->constrained_intra_pred_flag << 15;

	FUNC11(vde, value, vde->sxe, 0x48);

	value = 0x0C000000;
	value |= !!(dpb_frames[0].flags & FLAG_B_FRAME) << 24;

	FUNC11(vde, value, vde->sxe, 0x4C);

	value = 0x03800000;
	value |= bitstream_data_size & FUNC0(19, 15);

	FUNC11(vde, value, vde->sxe, 0x68);

	FUNC11(vde, bitstream_data_addr, vde->sxe, 0x6C);

	value = 0x10000005;
	value |= ctx->pic_width_in_mbs << 11;
	value |= ctx->pic_height_in_mbs << 3;

	FUNC11(vde, value, vde->mbe, 0x80);

	value = 0x26800000;
	value |= ctx->level_idc << 4;
	value |= !ctx->baseline_profile << 1;
	value |= !!ctx->direct_8x8_inference_flag;

	FUNC11(vde, value, vde->mbe, 0x80);

	FUNC11(vde, 0xF4000001, vde->mbe, 0x80);
	FUNC11(vde, 0x20000000, vde->mbe, 0x80);
	FUNC11(vde, 0xF4000101, vde->mbe, 0x80);

	value = 0x20000000;
	value |= ctx->chroma_qp_index_offset << 8;

	FUNC11(vde, value, vde->mbe, 0x80);

	err = FUNC8(vde,
					    ctx->dpb_frames_nb - 1,
					    ctx->pic_order_cnt_type == 0);
	if (err) {
		FUNC1(dev, "MBE frames setup failed %d\n", err);
		return err;
	}

	FUNC4(vde, 0, 0x000009FC);
	FUNC4(vde, 2, 0x61DEAD00);
	FUNC4(vde, 4, 0x62DEAD00);
	FUNC4(vde, 6, 0x63DEAD00);
	FUNC4(vde, 8, dpb_frames[0].aux_addr);

	value = 0xFC000000;
	value |= !!(dpb_frames[0].flags & FLAG_B_FRAME) << 2;

	if (!ctx->baseline_profile)
		value |= !!(dpb_frames[0].flags & FLAG_REFERENCE) << 1;

	FUNC11(vde, value, vde->mbe, 0x80);

	err = FUNC10(vde);
	if (err) {
		FUNC1(dev, "MBE programming failed %d\n", err);
		return err;
	}

	return 0;
}