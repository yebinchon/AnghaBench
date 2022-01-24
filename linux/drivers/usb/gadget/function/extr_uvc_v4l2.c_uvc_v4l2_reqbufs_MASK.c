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
struct v4l2_requestbuffers {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ queue; } ;
struct uvc_video {TYPE_2__ queue; } ;
struct uvc_device {struct uvc_video video; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (TYPE_2__*,struct v4l2_requestbuffers*) ; 
 struct video_device* FUNC1 (struct file*) ; 
 struct uvc_device* FUNC2 (struct video_device*) ; 

__attribute__((used)) static int
FUNC3(struct file *file, void *fh, struct v4l2_requestbuffers *b)
{
	struct video_device *vdev = FUNC1(file);
	struct uvc_device *uvc = FUNC2(vdev);
	struct uvc_video *video = &uvc->video;

	if (b->type != video->queue.queue.type)
		return -EINVAL;

	return FUNC0(&video->queue, b);
}