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
struct virtio_device {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct virtio_device *dev)
{
	unsigned long flags;

	FUNC1(&dev->config_lock, flags);
	FUNC0(dev);
	FUNC2(&dev->config_lock, flags);
}