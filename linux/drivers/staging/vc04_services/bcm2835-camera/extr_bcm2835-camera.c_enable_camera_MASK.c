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
struct bm2835_mmal_dev {int /*<<< orphan*/  camera_use_count; int /*<<< orphan*/  v4l2_dev; TYPE_1__** component; int /*<<< orphan*/  instance; int /*<<< orphan*/  camera_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 size_t COMP_CAMERA ; 
 int EINVAL ; 
 int /*<<< orphan*/  MMAL_PARAMETER_CAMERA_NUM ; 
 int /*<<< orphan*/  bcm2835_v4l2_debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct bm2835_mmal_dev *dev)
{
	int ret;

	if (!dev->camera_use_count) {
		ret = FUNC3(
			dev->instance,
			&dev->component[COMP_CAMERA]->control,
			MMAL_PARAMETER_CAMERA_NUM, &dev->camera_num,
			sizeof(dev->camera_num));
		if (ret < 0) {
			FUNC1(&dev->v4l2_dev,
				 "Failed setting camera num, ret %d\n", ret);
			return -EINVAL;
		}

		ret = FUNC2(
				dev->instance,
				dev->component[COMP_CAMERA]);
		if (ret < 0) {
			FUNC1(&dev->v4l2_dev,
				 "Failed enabling camera, ret %d\n", ret);
			return -EINVAL;
		}
	}
	dev->camera_use_count++;
	FUNC0(1, bcm2835_v4l2_debug,
		 &dev->v4l2_dev, "enabled camera (refcount %d)\n",
			dev->camera_use_count);
	return 0;
}