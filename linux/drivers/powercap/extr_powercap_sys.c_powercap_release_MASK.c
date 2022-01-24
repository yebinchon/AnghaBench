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
struct powercap_zone {int allocated; TYPE_1__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  idr; struct powercap_zone* constraints; struct powercap_zone* zone_dev_attrs; struct powercap_zone* name; int /*<<< orphan*/  id; int /*<<< orphan*/  parent_idr; } ;
struct powercap_control_type {int allocated; TYPE_1__* ops; int /*<<< orphan*/  lock; int /*<<< orphan*/  idr; struct powercap_control_type* constraints; struct powercap_control_type* zone_dev_attrs; struct powercap_control_type* name; int /*<<< orphan*/  id; int /*<<< orphan*/  parent_idr; } ;
struct device {scalar_t__ parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct powercap_zone*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct powercap_zone*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct powercap_zone*) ; 
 int /*<<< orphan*/  FUNC5 (struct powercap_zone*) ; 
 struct powercap_zone* FUNC6 (struct device*) ; 
 struct powercap_zone* FUNC7 (struct device*) ; 

__attribute__((used)) static void FUNC8(struct device *dev)
{
	bool allocated;

	if (dev->parent) {
		struct powercap_zone *power_zone = FUNC7(dev);

		/* Store flag as the release() may free memory */
		allocated = power_zone->allocated;
		/* Remove id from parent idr struct */
		FUNC1(power_zone->parent_idr, power_zone->id);
		/* Destroy idrs allocated for this zone */
		FUNC0(&power_zone->idr);
		FUNC2(power_zone->name);
		FUNC2(power_zone->zone_dev_attrs);
		FUNC2(power_zone->constraints);
		if (power_zone->ops->release)
			power_zone->ops->release(power_zone);
		if (allocated)
			FUNC2(power_zone);
	} else {
		struct powercap_control_type *control_type =
						FUNC6(dev);

		/* Store flag as the release() may free memory */
		allocated = control_type->allocated;
		FUNC0(&control_type->idr);
		FUNC3(&control_type->lock);
		if (control_type->ops && control_type->ops->release)
			control_type->ops->release(control_type);
		if (allocated)
			FUNC2(control_type);
	}
}