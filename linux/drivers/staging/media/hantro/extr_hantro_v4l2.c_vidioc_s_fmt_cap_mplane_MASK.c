#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {scalar_t__ pixelformat; scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  quantization; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; } ;
struct TYPE_5__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_1__ fmt; } ;
struct hantro_fmt {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  quantization; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct hantro_ctx {TYPE_4__* vpu_dst_fmt; TYPE_3__ src_fmt; struct v4l2_pix_format_mplane dst_fmt; TYPE_2__ fh; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  codec_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 struct hantro_ctx* FUNC0 (void*) ; 
 TYPE_4__* FUNC1 (struct hantro_fmt const*,unsigned int,scalar_t__) ; 
 struct hantro_fmt* FUNC2 (struct hantro_ctx*,unsigned int*) ; 
 scalar_t__ FUNC3 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct hantro_ctx*,scalar_t__) ; 
 struct vb2_queue* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vb2_queue*) ; 
 int FUNC8 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC10(struct file *file, void *priv,
				   struct v4l2_format *f)
{
	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
	struct hantro_ctx *ctx = FUNC0(priv);
	const struct hantro_fmt *formats;
	struct vb2_queue *vq;
	unsigned int num_fmts;
	int ret;

	/* Change not allowed if queue is busy. */
	vq = FUNC6(ctx->fh.m2m_ctx, f->type);
	if (FUNC7(vq))
		return -EBUSY;

	if (FUNC3(ctx)) {
		struct vb2_queue *peer_vq;

		/*
		 * Since format change on the CAPTURE queue will reset
		 * the OUTPUT queue, we can't allow doing so
		 * when the OUTPUT queue has buffers allocated.
		 */
		peer_vq = FUNC6(ctx->fh.m2m_ctx,
					  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
		if (FUNC7(peer_vq) &&
		    (pix_mp->pixelformat != ctx->dst_fmt.pixelformat ||
		     pix_mp->height != ctx->dst_fmt.height ||
		     pix_mp->width != ctx->dst_fmt.width))
			return -EBUSY;
	}

	ret = FUNC8(file, priv, f);
	if (ret)
		return ret;

	formats = FUNC2(ctx, &num_fmts);
	ctx->vpu_dst_fmt = FUNC1(formats, num_fmts,
					      pix_mp->pixelformat);
	ctx->dst_fmt = *pix_mp;

	/*
	 * Current raw format might have become invalid with newly
	 * selected codec, so reset it to default just to be safe and
	 * keep internal driver state sane. User is mandated to set
	 * the raw format again after we return, so we don't need
	 * anything smarter.
	 * Note that hantro_reset_raw_fmt() also propagates size
	 * changes to the raw format.
	 */
	if (FUNC3(ctx))
		FUNC4(ctx);

	/* Colorimetry information are always propagated. */
	ctx->src_fmt.colorspace = pix_mp->colorspace;
	ctx->src_fmt.ycbcr_enc = pix_mp->ycbcr_enc;
	ctx->src_fmt.xfer_func = pix_mp->xfer_func;
	ctx->src_fmt.quantization = pix_mp->quantization;

	FUNC9(0, "CAPTURE codec mode: %d\n", ctx->vpu_dst_fmt->codec_mode);
	FUNC9(0, "fmt - w: %d, h: %d\n",
		  pix_mp->width, pix_mp->height);

	FUNC5(ctx, pix_mp->pixelformat);

	return 0;
}