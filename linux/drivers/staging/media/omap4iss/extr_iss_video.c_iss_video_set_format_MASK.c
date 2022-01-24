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
struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct iss_video_fh {struct v4l2_format format; } ;
struct iss_video {scalar_t__ type; int /*<<< orphan*/  mutex; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iss_video*,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct iss_video_fh* FUNC4 (void*) ; 
 struct iss_video* FUNC5 (struct file*) ; 

__attribute__((used)) static int
FUNC6(struct file *file, void *fh, struct v4l2_format *format)
{
	struct iss_video_fh *vfh = FUNC4(fh);
	struct iss_video *video = FUNC5(file);
	struct v4l2_mbus_framefmt fmt;

	if (format->type != video->type)
		return -EINVAL;

	FUNC2(&video->mutex);

	/*
	 * Fill the bytesperline and sizeimage fields by converting to media bus
	 * format and back to pixel format.
	 */
	FUNC1(&format->fmt.pix, &fmt);
	FUNC0(video, &fmt, &format->fmt.pix);

	vfh->format = *format;

	FUNC3(&video->mutex);
	return 0;
}