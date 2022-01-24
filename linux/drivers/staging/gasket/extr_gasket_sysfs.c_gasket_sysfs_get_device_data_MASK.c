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
struct gasket_sysfs_mapping {struct gasket_dev* gasket_dev; } ;
struct gasket_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct gasket_sysfs_mapping* FUNC1 (struct device*) ; 

struct gasket_dev *FUNC2(struct device *device)
{
	struct gasket_sysfs_mapping *mapping = FUNC1(device);

	if (!mapping) {
		FUNC0(device, "device not registered\n");
		return NULL;
	}

	return mapping->gasket_dev;
}