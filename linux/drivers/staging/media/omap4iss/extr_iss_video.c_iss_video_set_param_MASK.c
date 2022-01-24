#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int denominator; } ;
struct TYPE_5__ {TYPE_1__ timeperframe; } ;
struct TYPE_6__ {TYPE_2__ output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct iss_video_fh {TYPE_1__ timeperframe; } ;
struct iss_video {scalar_t__ type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 struct iss_video_fh* FUNC0 (void*) ; 
 struct iss_video* FUNC1 (struct file*) ; 

__attribute__((used)) static int
FUNC2(struct file *file, void *fh, struct v4l2_streamparm *a)
{
	struct iss_video_fh *vfh = FUNC0(fh);
	struct iss_video *video = FUNC1(file);

	if (video->type != V4L2_BUF_TYPE_VIDEO_OUTPUT ||
	    video->type != a->type)
		return -EINVAL;

	if (a->parm.output.timeperframe.denominator == 0)
		a->parm.output.timeperframe.denominator = 1;

	vfh->timeperframe = a->parm.output.timeperframe;

	return 0;
}