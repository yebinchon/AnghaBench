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
struct virtio_device {int /*<<< orphan*/  dev; TYPE_1__* config; } ;
struct TYPE_2__ {int (* finalize_features ) (struct virtio_device*) ;unsigned int (* get_status ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int VIRTIO_CONFIG_S_FEATURES_OK ; 
 int /*<<< orphan*/  VIRTIO_F_VERSION_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct virtio_device*) ; 
 unsigned int FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_device*,int /*<<< orphan*/ ) ; 

int FUNC6(struct virtio_device *dev)
{
	int ret = dev->config->finalize_features(dev);
	unsigned status;

	FUNC1();
	if (ret)
		return ret;

	if (!FUNC5(dev, VIRTIO_F_VERSION_1))
		return 0;

	FUNC4(dev, VIRTIO_CONFIG_S_FEATURES_OK);
	status = dev->config->get_status(dev);
	if (!(status & VIRTIO_CONFIG_S_FEATURES_OK)) {
		FUNC0(&dev->dev, "virtio: device refuses features: %x\n",
			status);
		return -ENODEV;
	}
	return 0;
}