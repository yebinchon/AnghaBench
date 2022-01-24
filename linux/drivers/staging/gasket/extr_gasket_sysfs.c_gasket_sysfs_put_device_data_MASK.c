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
struct gasket_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct gasket_sysfs_mapping* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_sysfs_mapping*,int) ; 

void FUNC2(struct device *device, struct gasket_dev *dev)
{
	struct gasket_sysfs_mapping *mapping = FUNC0(device);

	if (!mapping)
		return;

	/* See comment of put_mapping_n() for why the '2' is necessary. */
	FUNC1(mapping, 2);
}