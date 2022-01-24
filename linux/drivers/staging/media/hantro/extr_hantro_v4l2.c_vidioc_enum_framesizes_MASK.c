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
struct v4l2_frmsizeenum {scalar_t__ index; scalar_t__ pixel_format; int /*<<< orphan*/  stepwise; int /*<<< orphan*/  type; } ;
struct hantro_fmt {scalar_t__ codec_mode; int /*<<< orphan*/  frmsize; } ;
struct hantro_ctx {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HANTRO_MODE_NONE ; 
 int /*<<< orphan*/  V4L2_FRMSIZE_TYPE_STEPWISE ; 
 struct hantro_ctx* FUNC0 (void*) ; 
 struct hantro_fmt* FUNC1 (struct hantro_fmt const*,unsigned int,scalar_t__) ; 
 struct hantro_fmt* FUNC2 (struct hantro_ctx*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				  struct v4l2_frmsizeenum *fsize)
{
	struct hantro_ctx *ctx = FUNC0(priv);
	const struct hantro_fmt *formats, *fmt;
	unsigned int num_fmts;

	if (fsize->index != 0) {
		FUNC3(0, "invalid frame size index (expected 0, got %d)\n",
			  fsize->index);
		return -EINVAL;
	}

	formats = FUNC2(ctx, &num_fmts);
	fmt = FUNC1(formats, num_fmts, fsize->pixel_format);
	if (!fmt) {
		FUNC3(0, "unsupported bitstream format (%08x)\n",
			  fsize->pixel_format);
		return -EINVAL;
	}

	/* This only makes sense for coded formats */
	if (fmt->codec_mode == HANTRO_MODE_NONE)
		return -EINVAL;

	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
	fsize->stepwise = fmt->frmsize;

	return 0;
}