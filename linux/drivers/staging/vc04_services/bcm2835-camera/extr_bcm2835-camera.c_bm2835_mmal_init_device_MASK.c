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
struct video_device {int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * queue; int /*<<< orphan*/ * lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  vb_vidq; } ;
struct bm2835_mmal_dev {size_t camera_num; TYPE_1__ capture; int /*<<< orphan*/  mutex; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  max_video_height ; 
 int /*<<< orphan*/  max_video_width ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct video_device vdev_template ; 
 int /*<<< orphan*/  FUNC1 (struct video_device*) ; 
 int /*<<< orphan*/ * video_nr ; 
 int FUNC2 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*,struct bm2835_mmal_dev*) ; 

__attribute__((used)) static int FUNC4(struct bm2835_mmal_dev *dev,
				   struct video_device *vfd)
{
	int ret;

	*vfd = vdev_template;

	vfd->v4l2_dev = &dev->v4l2_dev;

	vfd->lock = &dev->mutex;

	vfd->queue = &dev->capture.vb_vidq;

	/* video device needs to be able to access instance data */
	FUNC3(vfd, dev);

	ret = FUNC2(vfd,
				    VFL_TYPE_GRABBER,
				    video_nr[dev->camera_num]);
	if (ret < 0)
		return ret;

	FUNC0(vfd->v4l2_dev,
		  "V4L2 device registered as %s - stills mode > %dx%d\n",
		  FUNC1(vfd),
		  max_video_width, max_video_height);

	return 0;
}