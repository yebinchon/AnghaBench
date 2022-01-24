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
struct video_device {int dummy; } ;
struct TYPE_3__ {int width; unsigned int height; unsigned int sizeimage; unsigned int bytesperline; scalar_t__ priv; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct uvc_video {int bpp; int width; unsigned int height; unsigned int imagesize; scalar_t__ fcc; } ;
struct uvc_format {int bpp; scalar_t__ fcc; } ;
struct uvc_device {int /*<<< orphan*/  func; struct uvc_video video; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct uvc_format*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 struct uvc_format* uvc_formats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct video_device* FUNC2 (struct file*) ; 
 struct uvc_device* FUNC3 (struct video_device*) ; 

__attribute__((used)) static int
FUNC4(struct file *file, void *fh, struct v4l2_format *fmt)
{
	struct video_device *vdev = FUNC2(file);
	struct uvc_device *uvc = FUNC3(vdev);
	struct uvc_video *video = &uvc->video;
	struct uvc_format *format;
	unsigned int imagesize;
	unsigned int bpl;
	unsigned int i;

	for (i = 0; i < FUNC0(uvc_formats); ++i) {
		format = &uvc_formats[i];
		if (format->fcc == fmt->fmt.pix.pixelformat)
			break;
	}

	if (i == FUNC0(uvc_formats)) {
		FUNC1(&uvc->func, "Unsupported format 0x%08x.\n",
			  fmt->fmt.pix.pixelformat);
		return -EINVAL;
	}

	bpl = format->bpp * fmt->fmt.pix.width / 8;
	imagesize = bpl ? bpl * fmt->fmt.pix.height : fmt->fmt.pix.sizeimage;

	video->fcc = format->fcc;
	video->bpp = format->bpp;
	video->width = fmt->fmt.pix.width;
	video->height = fmt->fmt.pix.height;
	video->imagesize = imagesize;

	fmt->fmt.pix.field = V4L2_FIELD_NONE;
	fmt->fmt.pix.bytesperline = bpl;
	fmt->fmt.pix.sizeimage = imagesize;
	fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SRGB;
	fmt->fmt.pix.priv = 0;

	return 0;
}