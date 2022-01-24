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
struct powercap_zone {int /*<<< orphan*/  dev; } ;
struct powercap_control_type {int /*<<< orphan*/  lock; int /*<<< orphan*/  nr_zones; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct powercap_control_type *control_type,
				struct powercap_zone *power_zone)
{
	if (!power_zone || !control_type)
		return -EINVAL;

	FUNC1(&control_type->lock);
	control_type->nr_zones--;
	FUNC2(&control_type->lock);

	FUNC0(&power_zone->dev);

	return 0;
}