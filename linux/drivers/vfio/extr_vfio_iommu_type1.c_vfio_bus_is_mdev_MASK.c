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
struct bus_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  mdev_bus_type ; 
 struct bus_type* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct bus_type *bus)
{
	struct bus_type *mdev_bus;
	bool ret = false;

	mdev_bus = FUNC0(mdev_bus_type);
	if (mdev_bus) {
		ret = (bus == mdev_bus);
		FUNC1(mdev_bus_type);
	}

	return ret;
}