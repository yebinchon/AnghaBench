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
typedef  int /*<<< orphan*/  (* visorbus_state_complete_func ) (struct visor_device*,int /*<<< orphan*/ ) ;
struct visorhba_devdata {int dummy; } ;
struct visor_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct visorhba_devdata* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct visorhba_devdata*) ; 

__attribute__((used)) static int FUNC2(struct visor_device *dev,
			  visorbus_state_complete_func complete_func)
{
	struct visorhba_devdata *devdata = FUNC0(&dev->device);

	FUNC1(devdata);
	complete_func(dev, 0);
	return 0;
}