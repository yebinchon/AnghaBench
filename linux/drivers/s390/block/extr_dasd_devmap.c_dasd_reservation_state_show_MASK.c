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
struct dasd_device {int /*<<< orphan*/  flags; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_IS_RESERVED ; 
 int /*<<< orphan*/  DASD_FLAG_LOCK_STOLEN ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct dasd_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					   struct device_attribute *attr,
					   char *buf)
{
	struct dasd_device *device;
	int rc = 0;

	device = FUNC1(FUNC5(dev));
	if (FUNC0(device))
		return FUNC3(buf, PAGE_SIZE, "none\n");

	if (FUNC4(DASD_FLAG_IS_RESERVED, &device->flags))
		rc = FUNC3(buf, PAGE_SIZE, "reserved\n");
	else if (FUNC4(DASD_FLAG_LOCK_STOLEN, &device->flags))
		rc = FUNC3(buf, PAGE_SIZE, "lost\n");
	else
		rc = FUNC3(buf, PAGE_SIZE, "none\n");
	FUNC2(device);
	return rc;
}