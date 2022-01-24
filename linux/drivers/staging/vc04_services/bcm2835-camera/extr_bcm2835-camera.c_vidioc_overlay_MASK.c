#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vchiq_mmal_port {int dummy; } ;
struct file {int dummy; } ;
struct bm2835_mmal_dev {int /*<<< orphan*/  instance; int /*<<< orphan*/  v4l2_dev; TYPE_1__** component; } ;
struct TYPE_3__ {struct vchiq_mmal_port* input; struct vchiq_mmal_port* output; scalar_t__ enabled; } ;

/* Variables and functions */
 size_t CAM_PORT_PREVIEW ; 
 size_t COMP_CAMERA ; 
 size_t COMP_PREVIEW ; 
 int EINVAL ; 
 int /*<<< orphan*/  bcm2835_v4l2_debug ; 
 int /*<<< orphan*/  FUNC0 (struct bm2835_mmal_dev*) ; 
 scalar_t__ FUNC1 (struct bm2835_mmal_dev*) ; 
 int FUNC2 (struct bm2835_mmal_dev*,struct vchiq_mmal_port*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct vchiq_mmal_port*,struct vchiq_mmal_port*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vchiq_mmal_port*,struct vchiq_mmal_port*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct vchiq_mmal_port*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct vchiq_mmal_port*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct vchiq_mmal_port*) ; 
 struct bm2835_mmal_dev* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file, void *f, unsigned int on)
{
	int ret;
	struct bm2835_mmal_dev *dev = FUNC10(file);
	struct vchiq_mmal_port *src;
	struct vchiq_mmal_port *dst;

	if ((on && dev->component[COMP_PREVIEW]->enabled) ||
	    (!on && !dev->component[COMP_PREVIEW]->enabled))
		return 0;	/* already in requested state */

	src =
	    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];

	if (!on) {
		/* disconnect preview ports and disable component */
		ret = FUNC7(dev->instance, src);
		if (!ret)
			ret =
			    FUNC6(dev->instance, src,
							   NULL);
		if (ret >= 0)
			ret = FUNC4(
					dev->instance,
					dev->component[COMP_PREVIEW]);

		FUNC0(dev);
		return ret;
	}

	/* set preview port format and connect it to output */
	dst = &dev->component[COMP_PREVIEW]->input[0];

	ret = FUNC9(dev->instance, src);
	if (ret < 0)
		return ret;

	ret = FUNC2(dev, dst);
	if (ret < 0)
		return ret;

	if (FUNC1(dev) < 0)
		return -EINVAL;

	ret = FUNC5(
			dev->instance,
			dev->component[COMP_PREVIEW]);
	if (ret < 0)
		return ret;

	FUNC3(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
		 src, dst);
	ret = FUNC6(dev->instance, src, dst);
	if (ret)
		return ret;

	return FUNC8(dev->instance, src, NULL);
}