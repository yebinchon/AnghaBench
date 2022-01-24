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
struct dasd_device {int features; TYPE_2__* path; TYPE_1__* cdev; } ;
typedef  int __u8 ;
struct TYPE_4__ {int /*<<< orphan*/  error_count; scalar_t__ errorclk; int /*<<< orphan*/  chpid; int /*<<< orphan*/  cssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_FEATURE_PATH_AUTODISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,int) ; 
 int FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct dasd_device *device, __u8 lpum)
{
	int pos = FUNC5(lpum);

	if (!(device->features & DASD_FEATURE_PATH_AUTODISABLE)) {
		FUNC4(&device->cdev->dev,
			"Path %x.%02x (pathmask %02x) is operational despite excessive IFCCs\n",
			device->path[pos].cssid, device->path[pos].chpid, lpum);
		goto out;
	}

	/* no remaining path, cannot disable */
	if (!(FUNC2(device) & ~lpum)) {
		FUNC4(&device->cdev->dev,
			"Last path %x.%02x (pathmask %02x) is operational despite excessive IFCCs\n",
			device->path[pos].cssid, device->path[pos].chpid, lpum);
		goto out;
	}

	FUNC4(&device->cdev->dev,
		"Path %x.%02x (pathmask %02x) is disabled - IFCC threshold exceeded\n",
		device->path[pos].cssid, device->path[pos].chpid, lpum);
	FUNC3(device, lpum);
	FUNC1(device, lpum);

out:
	device->path[pos].errorclk = 0;
	FUNC0(&device->path[pos].error_count, 0);
}