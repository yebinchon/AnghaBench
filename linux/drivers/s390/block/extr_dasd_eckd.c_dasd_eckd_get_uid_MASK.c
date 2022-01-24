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
struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {struct dasd_uid uid; } ;
struct dasd_device {int /*<<< orphan*/  cdev; struct dasd_eckd_private* private; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct dasd_device *device, struct dasd_uid *uid)
{
	struct dasd_eckd_private *private = device->private;
	unsigned long flags;

	if (private) {
		FUNC1(FUNC0(device->cdev), flags);
		*uid = private->uid;
		FUNC2(FUNC0(device->cdev), flags);
		return 0;
	}
	return -EINVAL;
}