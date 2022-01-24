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
struct uvc_video {int bpp; int width; int height; int imagesize; int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; int /*<<< orphan*/  fcc; struct uvc_device* uvc; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  req_free; } ;
struct uvc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_YUYV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct uvc_video *video, struct uvc_device *uvc)
{
	FUNC0(&video->req_free);
	FUNC1(&video->req_lock);

	video->uvc = uvc;
	video->fcc = V4L2_PIX_FMT_YUYV;
	video->bpp = 16;
	video->width = 320;
	video->height = 240;
	video->imagesize = 320 * 240 * 2;

	/* Initialize the video buffers queue. */
	FUNC2(&video->queue, V4L2_BUF_TYPE_VIDEO_OUTPUT,
			&video->mutex);
	return 0;
}