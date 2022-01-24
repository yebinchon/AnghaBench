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
struct v4l2_fmtdesc {unsigned int index; int /*<<< orphan*/  pixelformat; } ;
struct hantro_fmt {scalar_t__ codec_mode; int /*<<< orphan*/  fourcc; } ;
struct hantro_ctx {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HANTRO_MODE_NONE ; 
 struct hantro_ctx* FUNC0 (void*) ; 
 struct hantro_fmt* FUNC1 (struct hantro_ctx*,unsigned int*) ; 
 int FUNC2 (struct hantro_ctx*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			   struct v4l2_fmtdesc *f, bool capture)

{
	struct hantro_ctx *ctx = FUNC0(priv);
	const struct hantro_fmt *fmt, *formats;
	unsigned int num_fmts, i, j = 0;
	bool skip_mode_none;

	/*
	 * When dealing with an encoder:
	 *  - on the capture side we want to filter out all MODE_NONE formats.
	 *  - on the output side we want to filter out all formats that are
	 *    not MODE_NONE.
	 * When dealing with a decoder:
	 *  - on the capture side we want to filter out all formats that are
	 *    not MODE_NONE.
	 *  - on the output side we want to filter out all MODE_NONE formats.
	 */
	skip_mode_none = capture == FUNC2(ctx);

	formats = FUNC1(ctx, &num_fmts);
	for (i = 0; i < num_fmts; i++) {
		bool mode_none = formats[i].codec_mode == HANTRO_MODE_NONE;

		if (skip_mode_none == mode_none)
			continue;
		if (j == f->index) {
			fmt = &formats[i];
			f->pixelformat = fmt->fourcc;
			return 0;
		}
		++j;
	}
	return -EINVAL;
}