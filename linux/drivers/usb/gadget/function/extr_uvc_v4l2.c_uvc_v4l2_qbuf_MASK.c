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
struct video_device {int dummy; } ;
struct v4l2_buffer {int dummy; } ;
struct uvc_video {int /*<<< orphan*/  queue; } ;
struct uvc_device {struct uvc_video video; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct v4l2_buffer*) ; 
 int FUNC1 (struct uvc_video*) ; 
 struct video_device* FUNC2 (struct file*) ; 
 struct uvc_device* FUNC3 (struct video_device*) ; 

__attribute__((used)) static int
FUNC4(struct file *file, void *fh, struct v4l2_buffer *b)
{
	struct video_device *vdev = FUNC2(file);
	struct uvc_device *uvc = FUNC3(vdev);
	struct uvc_video *video = &uvc->video;
	int ret;

	ret = FUNC0(&video->queue, b);
	if (ret < 0)
		return ret;

	return FUNC1(video);
}