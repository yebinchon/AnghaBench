#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vb2_queue {int dummy; } ;
struct v4l2_mpeg2_sequence {int /*<<< orphan*/  vertical_size; int /*<<< orphan*/  horizontal_size; } ;
struct v4l2_mpeg2_picture {int /*<<< orphan*/  alternate_scan; int /*<<< orphan*/  intra_vlc_format; int /*<<< orphan*/  q_scale_type; int /*<<< orphan*/  concealment_motion_vectors; int /*<<< orphan*/  frame_pred_frame_dct; int /*<<< orphan*/  top_field_first; int /*<<< orphan*/  picture_structure; int /*<<< orphan*/  intra_dc_precision; int /*<<< orphan*/ ** f_code; int /*<<< orphan*/  picture_coding_type; } ;
struct v4l2_ctrl_mpeg2_slice_params {int data_bit_offset; int bit_size; int /*<<< orphan*/  backward_ref_ts; int /*<<< orphan*/  forward_ref_ts; struct v4l2_mpeg2_picture picture; struct v4l2_mpeg2_sequence sequence; } ;
struct v4l2_ctrl_mpeg2_quantization {int /*<<< orphan*/ * non_intra_quantiser_matrix; scalar_t__ load_non_intra_quantiser_matrix; int /*<<< orphan*/ * intra_quantiser_matrix; scalar_t__ load_intra_quantiser_matrix; } ;
struct TYPE_8__ {struct v4l2_ctrl_mpeg2_quantization* quantization; struct v4l2_ctrl_mpeg2_slice_params* slice_params; } ;
struct cedrus_run {TYPE_1__* src; TYPE_6__* dst; TYPE_2__ mpeg2; } ;
struct cedrus_dev {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  m2m_ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct cedrus_ctx {TYPE_4__ fh; TYPE_3__ src_fmt; struct cedrus_dev* dev; } ;
typedef  int dma_addr_t ;
struct TYPE_11__ {int index; } ;
struct TYPE_12__ {TYPE_5__ vb2_buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  vb2_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEDRUS_CODEC_MPEG2 ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VE_DEC_MPEG_BWD_REF_CHROMA_ADDR ; 
 int /*<<< orphan*/  VE_DEC_MPEG_BWD_REF_LUMA_ADDR ; 
 int /*<<< orphan*/  VE_DEC_MPEG_CRTMBADDR ; 
 int /*<<< orphan*/  VE_DEC_MPEG_CTRL ; 
 int VE_DEC_MPEG_CTRL_IRQ_MASK ; 
 int VE_DEC_MPEG_CTRL_MC_CACHE_EN ; 
 int VE_DEC_MPEG_CTRL_MC_NO_WRITEBACK ; 
 int /*<<< orphan*/  VE_DEC_MPEG_ERROR ; 
 int /*<<< orphan*/  VE_DEC_MPEG_FWD_REF_CHROMA_ADDR ; 
 int /*<<< orphan*/  VE_DEC_MPEG_FWD_REF_LUMA_ADDR ; 
 int /*<<< orphan*/  VE_DEC_MPEG_IQMINPUT ; 
 int VE_DEC_MPEG_IQMINPUT_FLAG_INTRA ; 
 int VE_DEC_MPEG_IQMINPUT_FLAG_NON_INTRA ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  VE_DEC_MPEG_MBADDR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VE_DEC_MPEG_MP12HDR ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VE_DEC_MPEG_PICBOUNDSIZE ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VE_DEC_MPEG_PICCODEDSIZE ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VE_DEC_MPEG_REC_CHROMA ; 
 int /*<<< orphan*/  VE_DEC_MPEG_REC_LUMA ; 
 int /*<<< orphan*/  VE_DEC_MPEG_VLD_ADDR ; 
 int FUNC20 (int) ; 
 int VE_DEC_MPEG_VLD_ADDR_FIRST_PIC_DATA ; 
 int VE_DEC_MPEG_VLD_ADDR_LAST_PIC_DATA ; 
 int VE_DEC_MPEG_VLD_ADDR_VALID_PIC_DATA ; 
 int /*<<< orphan*/  VE_DEC_MPEG_VLD_END_ADDR ; 
 int /*<<< orphan*/  VE_DEC_MPEG_VLD_LEN ; 
 int /*<<< orphan*/  VE_DEC_MPEG_VLD_OFFSET ; 
 int FUNC21 (struct cedrus_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct cedrus_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct cedrus_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * intra_quantization_matrix_default ; 
 int /*<<< orphan*/ * non_intra_quantization_matrix_default ; 
 struct vb2_queue* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct vb2_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC27(struct cedrus_ctx *ctx, struct cedrus_run *run)
{
	const struct v4l2_ctrl_mpeg2_slice_params *slice_params;
	const struct v4l2_mpeg2_sequence *sequence;
	const struct v4l2_mpeg2_picture *picture;
	const struct v4l2_ctrl_mpeg2_quantization *quantization;
	dma_addr_t src_buf_addr, dst_luma_addr, dst_chroma_addr;
	dma_addr_t fwd_luma_addr, fwd_chroma_addr;
	dma_addr_t bwd_luma_addr, bwd_chroma_addr;
	struct cedrus_dev *dev = ctx->dev;
	struct vb2_queue *vq;
	const u8 *matrix;
	int forward_idx;
	int backward_idx;
	unsigned int i;
	u32 reg;

	slice_params = run->mpeg2.slice_params;
	sequence = &slice_params->sequence;
	picture = &slice_params->picture;

	quantization = run->mpeg2.quantization;

	/* Activate MPEG engine. */
	FUNC22(dev, CEDRUS_CODEC_MPEG2);

	/* Set intra quantization matrix. */

	if (quantization && quantization->load_intra_quantiser_matrix)
		matrix = quantization->intra_quantiser_matrix;
	else
		matrix = intra_quantization_matrix_default;

	for (i = 0; i < 64; i++) {
		reg = FUNC1(i, matrix[i]);
		reg |= VE_DEC_MPEG_IQMINPUT_FLAG_INTRA;

		FUNC23(dev, VE_DEC_MPEG_IQMINPUT, reg);
	}

	/* Set non-intra quantization matrix. */

	if (quantization && quantization->load_non_intra_quantiser_matrix)
		matrix = quantization->non_intra_quantiser_matrix;
	else
		matrix = non_intra_quantization_matrix_default;

	for (i = 0; i < 64; i++) {
		reg = FUNC1(i, matrix[i]);
		reg |= VE_DEC_MPEG_IQMINPUT_FLAG_NON_INTRA;

		FUNC23(dev, VE_DEC_MPEG_IQMINPUT, reg);
	}

	/* Set MPEG picture header. */

	reg = FUNC14(picture->picture_coding_type);
	reg |= FUNC9(0, 0, picture->f_code[0][0]);
	reg |= FUNC9(0, 1, picture->f_code[0][1]);
	reg |= FUNC9(1, 0, picture->f_code[1][0]);
	reg |= FUNC9(1, 1, picture->f_code[1][1]);
	reg |= FUNC10(picture->intra_dc_precision);
	reg |= FUNC11(picture->picture_structure);
	reg |= FUNC15(picture->top_field_first);
	reg |= FUNC6(picture->frame_pred_frame_dct);
	reg |= FUNC5(picture->concealment_motion_vectors);
	reg |= FUNC13(picture->q_scale_type);
	reg |= FUNC12(picture->intra_vlc_format);
	reg |= FUNC4(picture->alternate_scan);
	reg |= FUNC8(0);
	reg |= FUNC7(0);

	FUNC23(dev, VE_DEC_MPEG_MP12HDR, reg);

	/* Set frame dimensions. */

	reg = FUNC19(sequence->horizontal_size);
	reg |= FUNC18(sequence->vertical_size);

	FUNC23(dev, VE_DEC_MPEG_PICCODEDSIZE, reg);

	reg = FUNC17(ctx->src_fmt.width);
	reg |= FUNC16(ctx->src_fmt.height);

	FUNC23(dev, VE_DEC_MPEG_PICBOUNDSIZE, reg);

	/* Forward and backward prediction reference buffers. */

	vq = FUNC24(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);

	forward_idx = FUNC26(vq, slice_params->forward_ref_ts, 0);
	fwd_luma_addr = FUNC21(ctx, forward_idx, 0);
	fwd_chroma_addr = FUNC21(ctx, forward_idx, 1);

	FUNC23(dev, VE_DEC_MPEG_FWD_REF_LUMA_ADDR, fwd_luma_addr);
	FUNC23(dev, VE_DEC_MPEG_FWD_REF_CHROMA_ADDR, fwd_chroma_addr);

	backward_idx = FUNC26(vq, slice_params->backward_ref_ts, 0);
	bwd_luma_addr = FUNC21(ctx, backward_idx, 0);
	bwd_chroma_addr = FUNC21(ctx, backward_idx, 1);

	FUNC23(dev, VE_DEC_MPEG_BWD_REF_LUMA_ADDR, bwd_luma_addr);
	FUNC23(dev, VE_DEC_MPEG_BWD_REF_CHROMA_ADDR, bwd_chroma_addr);

	/* Destination luma and chroma buffers. */

	dst_luma_addr = FUNC21(ctx, run->dst->vb2_buf.index, 0);
	dst_chroma_addr = FUNC21(ctx, run->dst->vb2_buf.index, 1);

	FUNC23(dev, VE_DEC_MPEG_REC_LUMA, dst_luma_addr);
	FUNC23(dev, VE_DEC_MPEG_REC_CHROMA, dst_chroma_addr);

	/* Source offset and length in bits. */

	FUNC23(dev, VE_DEC_MPEG_VLD_OFFSET,
		     slice_params->data_bit_offset);

	reg = slice_params->bit_size - slice_params->data_bit_offset;
	FUNC23(dev, VE_DEC_MPEG_VLD_LEN, reg);

	/* Source beginning and end addresses. */

	src_buf_addr = FUNC25(&run->src->vb2_buf, 0);

	reg = FUNC20(src_buf_addr);
	reg |= VE_DEC_MPEG_VLD_ADDR_VALID_PIC_DATA;
	reg |= VE_DEC_MPEG_VLD_ADDR_LAST_PIC_DATA;
	reg |= VE_DEC_MPEG_VLD_ADDR_FIRST_PIC_DATA;

	FUNC23(dev, VE_DEC_MPEG_VLD_ADDR, reg);

	reg = src_buf_addr + FUNC0(slice_params->bit_size, 8);
	FUNC23(dev, VE_DEC_MPEG_VLD_END_ADDR, reg);

	/* Macroblock address: start at the beginning. */
	reg = FUNC3(0) | FUNC2(0);
	FUNC23(dev, VE_DEC_MPEG_MBADDR, reg);

	/* Clear previous errors. */
	FUNC23(dev, VE_DEC_MPEG_ERROR, 0);

	/* Clear correct macroblocks register. */
	FUNC23(dev, VE_DEC_MPEG_CRTMBADDR, 0);

	/* Enable appropriate interruptions and components. */

	reg = VE_DEC_MPEG_CTRL_IRQ_MASK | VE_DEC_MPEG_CTRL_MC_NO_WRITEBACK |
	      VE_DEC_MPEG_CTRL_MC_CACHE_EN;

	FUNC23(dev, VE_DEC_MPEG_CTRL, reg);
}