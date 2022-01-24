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
struct dasd_device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 size_t FUNC1 (struct dasd_device*) ; 
 struct dasd_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 int FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct dasd_device *device;
	unsigned int val;
	int rc = 0;

	device = FUNC2(FUNC7(dev));
	if (FUNC0(device))
		return FUNC1(device);

	if (FUNC6(buf, 0, &val) || val > 1)
		return -EINVAL;

	if (val)
		rc = FUNC4(device);
	else
		FUNC3(device);

	FUNC5(device);

	return rc ? : count;
}