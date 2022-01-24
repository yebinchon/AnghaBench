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
struct TYPE_2__ {scalar_t__ encode_component; int /*<<< orphan*/  camera_port; } ;
struct bm2835_mmal_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctrl_handler; scalar_t__* component; int /*<<< orphan*/  instance; TYPE_1__ capture; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 size_t COMP_CAMERA ; 
 size_t COMP_IMAGE_ENCODE ; 
 size_t COMP_PREVIEW ; 
 size_t COMP_VIDEO_ENCODE ; 
 int /*<<< orphan*/  bcm2835_v4l2_debug ; 
 int /*<<< orphan*/  FUNC0 (struct bm2835_mmal_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct bm2835_mmal_dev *dev)
{
	if (!dev)
		return;

	FUNC4(&dev->v4l2_dev, "unregistering %s\n",
		  FUNC8(&dev->vdev));

	FUNC9(&dev->vdev);

	if (dev->capture.encode_component) {
		FUNC2(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
			 "mmal_exit - disconnect tunnel\n");
		FUNC7(dev->instance,
					       dev->capture.camera_port, NULL);
		FUNC5(dev->instance,
					     dev->capture.encode_component);
	}
	FUNC5(dev->instance,
				     dev->component[COMP_CAMERA]);

	FUNC6(dev->instance,
				      dev->component[COMP_VIDEO_ENCODE]);

	FUNC6(dev->instance,
				      dev->component[COMP_IMAGE_ENCODE]);

	FUNC6(dev->instance,
				      dev->component[COMP_PREVIEW]);

	FUNC6(dev->instance,
				      dev->component[COMP_CAMERA]);

	FUNC1(&dev->ctrl_handler);

	FUNC3(&dev->v4l2_dev);

	FUNC0(dev);
}