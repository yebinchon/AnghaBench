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
struct visor_device {int resuming; } ;

/* Variables and functions */
 int FUNC0 (struct visor_device*,int) ; 

int FUNC1(struct visor_device *dev_info)
{
	int err;

	err = FUNC0(dev_info, false);
	if (err < 0) {
		dev_info->resuming = false;
		return err;
	}
	return 0;
}