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
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct slot {int index; int power_domain; TYPE_1__ hotplug_slot; int /*<<< orphan*/  dn; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct slot*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct slot* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  rpaphp_hotplug_slot_ops ; 

struct slot *FUNC4(struct device_node *dn,
		int drc_index, char *drc_name, int power_domain)
{
	struct slot *slot;

	slot = FUNC2(sizeof(struct slot), GFP_KERNEL);
	if (!slot)
		goto error_nomem;
	slot->name = FUNC1(drc_name, GFP_KERNEL);
	if (!slot->name)
		goto error_slot;
	slot->dn = FUNC3(dn);
	slot->index = drc_index;
	slot->power_domain = power_domain;
	slot->hotplug_slot.ops = &rpaphp_hotplug_slot_ops;

	return (slot);

error_slot:
	FUNC0(slot);
error_nomem:
	return NULL;
}