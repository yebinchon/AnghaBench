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
struct siox_device {unsigned int watchdog_errors; int /*<<< orphan*/  smaster; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 
 struct siox_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct siox_device *sdev = FUNC3(dev);
	unsigned int watchdog_errors;

	FUNC0(sdev->smaster);

	watchdog_errors = sdev->watchdog_errors;

	FUNC1(sdev->smaster);

	return FUNC2(buf, "%u\n", watchdog_errors);
}