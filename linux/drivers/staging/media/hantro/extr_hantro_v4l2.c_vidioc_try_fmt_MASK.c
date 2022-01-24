#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_pix_format_mplane {int pixelformat; int num_planes; int width; int height; TYPE_3__* plane_fmt; int /*<<< orphan*/  field; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct hantro_fmt {scalar_t__ fourcc; int max_depth; scalar_t__ header_size; int /*<<< orphan*/  frmsize; } ;
struct TYPE_5__ {int width; int height; } ;
struct hantro_ctx {struct hantro_fmt* vpu_src_fmt; TYPE_2__ src_fmt; struct hantro_fmt* vpu_dst_fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ sizeimage; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_PIX_FMT_H264_SLICE ; 
 struct hantro_ctx* FUNC1 (void*) ; 
 struct hantro_fmt* FUNC2 (struct hantro_fmt const*,unsigned int,int) ; 
 struct hantro_fmt* FUNC3 (struct hantro_fmt const*,unsigned int,int) ; 
 struct hantro_fmt* FUNC4 (struct hantro_ctx*,unsigned int*) ; 
 int FUNC5 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_pix_format_mplane*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC9(struct file *file, void *priv, struct v4l2_format *f,
			  bool capture)
{
	struct hantro_ctx *ctx = FUNC1(priv);
	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
	const struct hantro_fmt *formats, *fmt, *vpu_fmt;
	unsigned int num_fmts;
	bool coded;

	coded = capture == FUNC5(ctx);

	FUNC8(4, "trying format %c%c%c%c\n",
		  (pix_mp->pixelformat & 0x7f),
		  (pix_mp->pixelformat >> 8) & 0x7f,
		  (pix_mp->pixelformat >> 16) & 0x7f,
		  (pix_mp->pixelformat >> 24) & 0x7f);

	formats = FUNC4(ctx, &num_fmts);
	fmt = FUNC2(formats, num_fmts, pix_mp->pixelformat);
	if (!fmt) {
		fmt = FUNC3(formats, num_fmts, coded);
		f->fmt.pix_mp.pixelformat = fmt->fourcc;
	}

	if (coded) {
		pix_mp->num_planes = 1;
		vpu_fmt = fmt;
	} else if (FUNC5(ctx)) {
		vpu_fmt = ctx->vpu_dst_fmt;
	} else {
		vpu_fmt = ctx->vpu_src_fmt;
		/*
		 * Width/height on the CAPTURE end of a decoder are ignored and
		 * replaced by the OUTPUT ones.
		 */
		pix_mp->width = ctx->src_fmt.width;
		pix_mp->height = ctx->src_fmt.height;
	}

	pix_mp->field = V4L2_FIELD_NONE;

	FUNC6(&pix_mp->width, &pix_mp->height,
				       &vpu_fmt->frmsize);

	if (!coded) {
		/* Fill remaining fields */
		FUNC7(pix_mp, fmt->fourcc, pix_mp->width,
				    pix_mp->height);
		/*
		 * The H264 decoder needs extra space on the output buffers
		 * to store motion vectors. This is needed for reference
		 * frames.
		 */
		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE)
			pix_mp->plane_fmt[0].sizeimage +=
				128 * FUNC0(pix_mp->width, 16) *
				      FUNC0(pix_mp->height, 16);
	} else if (!pix_mp->plane_fmt[0].sizeimage) {
		/*
		 * For coded formats the application can specify
		 * sizeimage. If the application passes a zero sizeimage,
		 * let's default to the maximum frame size.
		 */
		pix_mp->plane_fmt[0].sizeimage = fmt->header_size +
			pix_mp->width * pix_mp->height * fmt->max_depth;
	}

	return 0;
}