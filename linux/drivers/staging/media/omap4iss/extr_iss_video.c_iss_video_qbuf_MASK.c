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
struct v4l2_buffer {int dummy; } ;
struct iss_video_fh {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {TYPE_1__* v4l2_dev; } ;
struct iss_video {TYPE_2__ video; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 struct iss_video_fh* FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 
 struct iss_video* FUNC2 (struct file*) ; 

__attribute__((used)) static int
FUNC3(struct file *file, void *fh, struct v4l2_buffer *b)
{
	struct iss_video *video = FUNC2(file);
	struct iss_video_fh *vfh = FUNC0(fh);

	return FUNC1(&vfh->queue, video->video.v4l2_dev->mdev, b);
}