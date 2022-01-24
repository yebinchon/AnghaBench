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
struct video_device {int device_caps; int /*<<< orphan*/  vfl_dir; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; } ;
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; struct video_device video_dev; } ;

/* Variables and functions */
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_M2M ; 
 int /*<<< orphan*/  VFL_DIR_M2M ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  allegro_fops ; 
 int /*<<< orphan*/  allegro_ioctl_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC1 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*,struct allegro_dev*) ; 

__attribute__((used)) static int FUNC3(struct allegro_dev *dev)
{
	struct video_device *video_dev = &dev->video_dev;

	FUNC0(video_dev->name, "allegro", sizeof(video_dev->name));
	video_dev->fops = &allegro_fops;
	video_dev->ioctl_ops = &allegro_ioctl_ops;
	video_dev->release = video_device_release_empty;
	video_dev->lock = &dev->lock;
	video_dev->v4l2_dev = &dev->v4l2_dev;
	video_dev->vfl_dir = VFL_DIR_M2M;
	video_dev->device_caps = V4L2_CAP_VIDEO_M2M | V4L2_CAP_STREAMING;
	FUNC2(video_dev, dev);

	return FUNC1(video_dev, VFL_TYPE_GRABBER, 0);
}