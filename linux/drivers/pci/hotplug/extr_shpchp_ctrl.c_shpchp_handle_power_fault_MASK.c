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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct slot {int status; TYPE_1__* hpc_ops; } ;
struct controller {int slot_device_offset; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* query_power_fault ) (struct slot*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  INT_POWER_FAULT ; 
 int /*<<< orphan*/  INT_POWER_FAULT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*,int /*<<< orphan*/ ) ; 
 struct slot* FUNC3 (struct controller*,int) ; 
 int FUNC4 (struct slot*) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*) ; 

u8 FUNC6(u8 hp_slot, struct controller *ctrl)
{
	struct slot *p_slot;
	u32 event_type;

	/* Power fault */
	FUNC0(ctrl, "Power fault interrupt received\n");

	p_slot = FUNC3(ctrl, hp_slot + ctrl->slot_device_offset);

	if (!(p_slot->hpc_ops->query_power_fault(p_slot))) {
		/*
		 * Power fault Cleared
		 */
		FUNC1(ctrl, "Power fault cleared on Slot(%s)\n",
			  FUNC4(p_slot));
		p_slot->status = 0x00;
		event_type = INT_POWER_FAULT_CLEAR;
	} else {
		/*
		 *   Power fault
		 */
		FUNC1(ctrl, "Power fault on Slot(%s)\n", FUNC4(p_slot));
		event_type = INT_POWER_FAULT;
		/* set power fault status for this board */
		p_slot->status = 0xFF;
		FUNC1(ctrl, "Power fault bit %x set\n", hp_slot);
	}

	FUNC2(p_slot, event_type);

	return 1;
}