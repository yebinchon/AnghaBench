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
struct hotplug_slot {int /*<<< orphan*/  ops; } ;
struct controller {struct hotplug_slot hotplug_slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hotplug_slot*) ; 

__attribute__((used)) static void FUNC2(struct controller *ctrl)
{
	struct hotplug_slot *hotplug_slot = &ctrl->hotplug_slot;

	FUNC1(hotplug_slot);
	FUNC0(hotplug_slot->ops);
}