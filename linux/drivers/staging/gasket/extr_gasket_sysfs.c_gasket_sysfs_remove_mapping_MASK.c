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
struct gasket_sysfs_mapping {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct gasket_sysfs_mapping* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_sysfs_mapping*,int) ; 

void FUNC3(struct device *device)
{
	struct gasket_sysfs_mapping *mapping = FUNC1(device);

	if (!mapping) {
		FUNC0(device,
			"Attempted to remove non-existent sysfs mapping to device\n");
		return;
	}

	FUNC2(mapping, 2);
}