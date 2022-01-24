#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t real_unit_addr; scalar_t__ type; } ;
struct dasd_eckd_private {TYPE_1__ uid; struct alias_lcu* lcu; } ;
struct dasd_device {int /*<<< orphan*/  alias_list; struct dasd_eckd_private* private; } ;
struct alias_lcu {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  active_devices; TYPE_3__* uac; } ;
typedef  size_t __u8 ;
struct TYPE_6__ {TYPE_2__* unit; } ;
struct TYPE_5__ {scalar_t__ ua_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int UPDATE_PENDING ; 
 int FUNC1 (struct alias_lcu*,struct dasd_device*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct alias_lcu*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct dasd_device *device)
{
	struct dasd_eckd_private *private = device->private;
	__u8 uaddr = private->uid.real_unit_addr;
	struct alias_lcu *lcu = private->lcu;
	unsigned long flags;
	int rc;

	rc = 0;
	FUNC4(&lcu->lock, flags);
	/*
	 * Check if device and lcu type differ. If so, the uac data may be
	 * outdated and needs to be updated.
	 */
	if (private->uid.type !=  lcu->uac->unit[uaddr].ua_type) {
		lcu->flags |= UPDATE_PENDING;
		FUNC0(DBF_WARNING, device, "%s",
			      "uid type mismatch - trigger rescan");
	}
	if (!(lcu->flags & UPDATE_PENDING)) {
		rc = FUNC1(lcu, device, device);
		if (rc)
			lcu->flags |= UPDATE_PENDING;
	}
	if (lcu->flags & UPDATE_PENDING) {
		FUNC3(&device->alias_list, &lcu->active_devices);
		FUNC2(lcu, device);
	}
	FUNC5(&lcu->lock, flags);
	return rc;
}