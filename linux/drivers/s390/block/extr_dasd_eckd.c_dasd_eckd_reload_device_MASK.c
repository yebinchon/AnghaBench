#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_uid {int base_unit_addr; char* vduit; char* vendor; char* serial; int ssid; } ;
struct TYPE_3__ {int base_unit_addr; } ;
struct dasd_eckd_private {TYPE_1__ uid; } ;
struct dasd_device {TYPE_2__* cdev; struct dasd_eckd_private* private; } ;
typedef  int /*<<< orphan*/  print_uid ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,struct dasd_uid*) ; 
 int FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct dasd_device *device)
{
	struct dasd_eckd_private *private = device->private;
	int rc, old_base;
	char print_uid[60];
	struct dasd_uid uid;
	unsigned long flags;

	/*
	 * remove device from alias handling to prevent new requests
	 * from being scheduled on the wrong alias device
	 */
	FUNC0(device);

	FUNC8(FUNC6(device->cdev), flags);
	old_base = private->uid.base_unit_addr;
	FUNC9(FUNC6(device->cdev), flags);

	/* Read Configuration Data */
	rc = FUNC4(device);
	if (rc)
		goto out_err;

	rc = FUNC2(device);
	if (rc)
		goto out_err;
	/*
	 * update unit address configuration and
	 * add device to alias management
	 */
	FUNC1(device);

	FUNC3(device, &uid);

	if (old_base != uid.base_unit_addr) {
		if (FUNC10(uid.vduit) > 0)
			FUNC7(print_uid, sizeof(print_uid),
				 "%s.%s.%04x.%02x.%s", uid.vendor, uid.serial,
				 uid.ssid, uid.base_unit_addr, uid.vduit);
		else
			FUNC7(print_uid, sizeof(print_uid),
				 "%s.%s.%04x.%02x", uid.vendor, uid.serial,
				 uid.ssid, uid.base_unit_addr);

		FUNC5(&device->cdev->dev,
			 "An Alias device was reassigned to a new base device "
			 "with UID: %s\n", print_uid);
	}
	return 0;

out_err:
	return -1;
}