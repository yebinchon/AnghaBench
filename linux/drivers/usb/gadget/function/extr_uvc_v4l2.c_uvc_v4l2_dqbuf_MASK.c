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
struct file {int f_flags; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ *,struct v4l2_buffer*,int) ; 
 struct video_device* FUNC1 (struct file*) ; 
 struct uvc_device* FUNC2 (struct video_device*) ; 

__attribute__((used)) static int
FUNC3(struct file *file, void *fh, struct v4l2_buffer *b)
{
	struct video_device *vdev = FUNC1(file);
	struct uvc_device *uvc = FUNC2(vdev);
	struct uvc_video *video = &uvc->video;

	return FUNC0(&video->queue, b, file->f_flags & O_NONBLOCK);
}