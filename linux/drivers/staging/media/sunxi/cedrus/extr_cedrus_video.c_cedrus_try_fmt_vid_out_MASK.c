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
struct v4l2_pix_format {scalar_t__ sizeimage; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cedrus_dev {int /*<<< orphan*/  capabilities; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEDRUS_DECODE_SRC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cedrus_ctx* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_pix_format*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct cedrus_ctx *ctx = FUNC1(file);
	struct cedrus_dev *dev = ctx->dev;
	struct v4l2_pix_format *pix_fmt = &f->fmt.pix;

	if (!FUNC0(pix_fmt->pixelformat, CEDRUS_DECODE_SRC,
				 dev->capabilities))
		return -EINVAL;

	/* Source image size has to be provided by userspace. */
	if (pix_fmt->sizeimage == 0)
		return -EINVAL;

	FUNC2(pix_fmt);

	return 0;
}