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
struct visorhba_devdata {int serverchangingstate; int /*<<< orphan*/  serverdown; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct visorhba_devdata*) ; 

__attribute__((used)) static int FUNC1(struct visorhba_devdata *devdata)
{
	if (!devdata->serverdown && !devdata->serverchangingstate) {
		devdata->serverchangingstate = true;
		FUNC0(devdata);
	} else if (devdata->serverchangingstate) {
		return -EINVAL;
	}
	return 0;
}