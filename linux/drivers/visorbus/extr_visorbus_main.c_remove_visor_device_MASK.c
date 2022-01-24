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
struct visor_device {int /*<<< orphan*/  device; scalar_t__ pending_msg_hdr; int /*<<< orphan*/  list_all; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROLVM_DEVICE_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct visor_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct visor_device *dev)
{
	FUNC1(&dev->list_all);
	FUNC2(&dev->device);
	if (dev->pending_msg_hdr)
		FUNC3(dev, 0, CONTROLVM_DEVICE_DESTROY);
	FUNC0(&dev->device);
}