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
struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;
struct alias_lcu {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alias_lcu*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct dasd_device *device)
{
	struct dasd_eckd_private *private = device->private;
	struct alias_lcu *lcu = private->lcu;
	unsigned long flags;

	/* nothing to do if already removed */
	if (!lcu)
		return 0;
	FUNC1(&lcu->lock, flags);
	FUNC0(lcu, device);
	FUNC2(&lcu->lock, flags);
	return 0;
}