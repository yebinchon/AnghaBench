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
struct v4l2_pix_format_mplane {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct hantro_fmt {int /*<<< orphan*/  fourcc; } ;
struct hantro_ctx {struct v4l2_pix_format_mplane src_fmt; struct v4l2_pix_format_mplane dst_fmt; struct hantro_fmt const* vpu_dst_fmt; struct hantro_fmt const* vpu_src_fmt; } ;

/* Variables and functions */
 struct hantro_fmt* FUNC0 (struct hantro_fmt const*,unsigned int,int) ; 
 struct hantro_fmt* FUNC1 (struct hantro_ctx*,unsigned int*) ; 
 scalar_t__ FUNC2 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_pix_format_mplane*,struct hantro_fmt const*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_pix_format_mplane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct hantro_ctx *ctx)
{
	const struct hantro_fmt *raw_vpu_fmt, *formats;
	struct v4l2_pix_format_mplane *raw_fmt, *encoded_fmt;
	unsigned int num_fmts;

	formats = FUNC1(ctx, &num_fmts);
	raw_vpu_fmt = FUNC0(formats, num_fmts, false);

	if (FUNC2(ctx)) {
		ctx->vpu_src_fmt = raw_vpu_fmt;
		raw_fmt = &ctx->src_fmt;
		encoded_fmt = &ctx->dst_fmt;
	} else {
		ctx->vpu_dst_fmt = raw_vpu_fmt;
		raw_fmt = &ctx->dst_fmt;
		encoded_fmt = &ctx->src_fmt;
	}

	FUNC3(raw_fmt, raw_vpu_fmt);
	FUNC4(raw_fmt, raw_vpu_fmt->fourcc,
			    encoded_fmt->width,
			    encoded_fmt->height);
}