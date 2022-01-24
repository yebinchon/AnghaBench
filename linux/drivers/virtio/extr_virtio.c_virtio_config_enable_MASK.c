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
struct virtio_device {int config_enabled; int config_change_pending; int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct virtio_device *dev)
{
	FUNC1(&dev->config_lock);
	dev->config_enabled = true;
	if (dev->config_change_pending)
		FUNC0(dev);
	dev->config_change_pending = false;
	FUNC2(&dev->config_lock);
}