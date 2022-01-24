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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; struct dasd_device* device; } ;
struct dasd_device {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int DASD_FEATURE_READONLY ; 
 int /*<<< orphan*/  DASD_FLAG_DEVICE_RO ; 
 scalar_t__ FUNC0 (struct dasd_devmap*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  dasd_devmap_lock ; 
 struct dasd_devmap* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct dasd_devmap *devmap;
	struct dasd_device *device;
	int ro_flag = 0;

	devmap = FUNC1(FUNC2(dev));
	if (FUNC0(devmap))
		goto out;

	ro_flag = !!(devmap->features & DASD_FEATURE_READONLY);

	FUNC4(&dasd_devmap_lock);
	device = devmap->device;
	if (device)
		ro_flag |= FUNC6(DASD_FLAG_DEVICE_RO, &device->flags);
	FUNC5(&dasd_devmap_lock);

out:
	return FUNC3(buf, PAGE_SIZE, ro_flag ? "1\n" : "0\n");
}