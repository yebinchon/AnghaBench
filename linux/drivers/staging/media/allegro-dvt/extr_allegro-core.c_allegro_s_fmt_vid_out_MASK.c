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
struct TYPE_3__ {int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  bytesperline; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct allegro_channel {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  sizeimage_encoded; int /*<<< orphan*/  level; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  sizeimage_raw; int /*<<< orphan*/  stride; } ;

/* Variables and functions */
 int FUNC0 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct allegro_channel* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
				 struct v4l2_format *f)
{
	struct allegro_channel *channel = FUNC2(fh);
	int err;

	err = FUNC0(file, fh, f);
	if (err)
		return err;

	channel->width = f->fmt.pix.width;
	channel->height = f->fmt.pix.height;
	channel->stride = f->fmt.pix.bytesperline;
	channel->sizeimage_raw = f->fmt.pix.sizeimage;

	channel->colorspace = f->fmt.pix.colorspace;
	channel->ycbcr_enc = f->fmt.pix.ycbcr_enc;
	channel->quantization = f->fmt.pix.quantization;
	channel->xfer_func = f->fmt.pix.xfer_func;

	channel->level =
		FUNC3(channel->width, channel->height);
	channel->sizeimage_encoded =
		FUNC1(channel->width, channel->height);

	return 0;
}