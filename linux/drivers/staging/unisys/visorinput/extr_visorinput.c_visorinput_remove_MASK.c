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
struct visorinput_devdata {int /*<<< orphan*/  visorinput_dev; int /*<<< orphan*/  lock_visor_dev; } ;
struct visor_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct visorinput_devdata* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct visorinput_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct visor_device*) ; 

__attribute__((used)) static void FUNC7(struct visor_device *dev)
{
	struct visorinput_devdata *devdata = FUNC0(&dev->device);

	if (!devdata)
		return;

	FUNC3(&devdata->lock_visor_dev);
	FUNC6(dev);

	/*
	 * due to above, at this time no thread of execution will be in
	 * visorinput_channel_interrupt()
	 */

	FUNC1(&dev->device, NULL);
	FUNC4(&devdata->lock_visor_dev);

	FUNC5(devdata->visorinput_dev);
	FUNC2(devdata);
}