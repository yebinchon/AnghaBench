#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {TYPE_1__* tzp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int sustainable_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct thermal_zone_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *devattr,
		       char *buf)
{
	struct thermal_zone_device *tz = FUNC1(dev);

	if (tz->tzp)
		return FUNC0(buf, "%u\n", tz->tzp->sustainable_power);
	else
		return -EIO;
}