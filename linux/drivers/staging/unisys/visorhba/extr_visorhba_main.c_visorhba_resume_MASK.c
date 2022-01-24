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
typedef  int /*<<< orphan*/  visorbus_state_complete_func ;
struct visorhba_devdata {int serverdown; int serverchangingstate; int /*<<< orphan*/  thread; } ;
struct visor_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 struct visorhba_devdata* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_incoming_rsps ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct visorhba_devdata*,char*) ; 

__attribute__((used)) static int FUNC2(struct visor_device *dev,
			   visorbus_state_complete_func complete_func)
{
	struct visorhba_devdata *devdata;

	devdata = FUNC0(&dev->device);
	if (!devdata)
		return -EINVAL;

	if (devdata->serverdown && !devdata->serverchangingstate)
		devdata->serverchangingstate = true;

	devdata->thread = FUNC1(process_incoming_rsps, devdata,
					     "vhba_incming");
	devdata->serverdown = false;
	devdata->serverchangingstate = false;

	return 0;
}