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
struct TYPE_2__ {struct plat_vlynq_ops* platform_data; } ;
struct vlynq_device {int enabled; TYPE_1__ dev; } ;
struct plat_vlynq_ops {int /*<<< orphan*/  (* off ) (struct vlynq_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct vlynq_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlynq_device*) ; 
 int FUNC2 (struct vlynq_device*) ; 

int FUNC3(struct vlynq_device *dev)
{
	struct plat_vlynq_ops *ops = dev->dev.platform_data;
	int result = -ENODEV;

	result = FUNC0(dev);
	if (result)
		return result;

	result = FUNC2(dev);
	if (result)
		ops->off(dev);

	dev->enabled = !result;
	return result;
}