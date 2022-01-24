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
struct virtio_driver {int /*<<< orphan*/  (* remove ) (struct virtio_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;
struct virtio_device {TYPE_2__* config; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_status ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_CONFIG_S_ACKNOWLEDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct virtio_device* FUNC1 (struct device*) ; 
 struct virtio_driver* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_device*) ; 

__attribute__((used)) static int FUNC7(struct device *_d)
{
	struct virtio_device *dev = FUNC1(_d);
	struct virtio_driver *drv = FUNC2(dev->dev.driver);

	FUNC6(dev);

	drv->remove(dev);

	/* Driver should have reset device. */
	FUNC0(dev->config->get_status(dev));

	/* Acknowledge the device's existence again. */
	FUNC5(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);
	return 0;
}