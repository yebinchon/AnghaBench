#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct slot {scalar_t__ state; TYPE_2__ task_event; struct controller* ctrl; scalar_t__ hp_slot; int /*<<< orphan*/  number; } ;
struct pci_func {int dummy; } ;
struct controller {TYPE_1__* event_queue; int /*<<< orphan*/  crit_sect; scalar_t__ slot_device_offset; int /*<<< orphan*/  bus; } ;
struct TYPE_5__ {scalar_t__ event_type; scalar_t__ hp_slot; } ;

/* Variables and functions */
 scalar_t__ BLINKINGOFF_STATE ; 
 scalar_t__ BLINKINGON_STATE ; 
 int HZ ; 
 scalar_t__ INT_BUTTON_CANCEL ; 
 scalar_t__ INT_BUTTON_PRESS ; 
 scalar_t__ INT_BUTTON_RELEASE ; 
 scalar_t__ INT_POWER_FAULT ; 
 scalar_t__ STATIC_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,scalar_t__) ; 
 struct slot* FUNC2 (struct controller*,scalar_t__) ; 
 struct pci_func* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct controller*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct controller*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct controller*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct controller*,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  msg_button_cancel ; 
 int /*<<< orphan*/  msg_button_off ; 
 int /*<<< orphan*/  msg_button_on ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pushbutton_helper_thread ; 
 int /*<<< orphan*/  FUNC13 (struct controller*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct controller*) ; 

__attribute__((used)) static void FUNC16(struct controller *ctrl)
{
	int loop = 0;
	int change = 1;
	struct pci_func *func;
	u8 hp_slot;
	struct slot *p_slot;

	while (change) {
		change = 0;

		for (loop = 0; loop < 10; loop++) {
			/* dbg("loop %d\n", loop); */
			if (ctrl->event_queue[loop].event_type != 0) {
				hp_slot = ctrl->event_queue[loop].hp_slot;

				func = FUNC3(ctrl->bus, (hp_slot + ctrl->slot_device_offset), 0);
				if (!func)
					return;

				p_slot = FUNC2(ctrl, hp_slot + ctrl->slot_device_offset);
				if (!p_slot)
					return;

				FUNC4("hp_slot %d, func %p, p_slot %p\n",
				    hp_slot, func, p_slot);

				if (ctrl->event_queue[loop].event_type == INT_BUTTON_PRESS) {
					FUNC4("button pressed\n");
				} else if (ctrl->event_queue[loop].event_type ==
					   INT_BUTTON_CANCEL) {
					FUNC4("button cancel\n");
					FUNC5(&p_slot->task_event);

					FUNC11(&ctrl->crit_sect);

					if (p_slot->state == BLINKINGOFF_STATE) {
						/* slot is on */
						FUNC4("turn on green LED\n");
						FUNC8(ctrl, hp_slot);
					} else if (p_slot->state == BLINKINGON_STATE) {
						/* slot is off */
						FUNC4("turn off green LED\n");
						FUNC7(ctrl, hp_slot);
					}

					FUNC9(msg_button_cancel, p_slot->number);

					p_slot->state = STATIC_STATE;

					FUNC1(ctrl, hp_slot);

					FUNC13(ctrl);

					/* Wait for SOBS to be unset */
					FUNC15(ctrl);

					FUNC12(&ctrl->crit_sect);
				}
				/*** button Released (No action on press...) */
				else if (ctrl->event_queue[loop].event_type == INT_BUTTON_RELEASE) {
					FUNC4("button release\n");

					if (FUNC10(ctrl, hp_slot)) {
						FUNC4("slot is on\n");
						p_slot->state = BLINKINGOFF_STATE;
						FUNC9(msg_button_off, p_slot->number);
					} else {
						FUNC4("slot is off\n");
						p_slot->state = BLINKINGON_STATE;
						FUNC9(msg_button_on, p_slot->number);
					}
					FUNC11(&ctrl->crit_sect);

					FUNC4("blink green LED and turn off amber\n");

					FUNC1(ctrl, hp_slot);
					FUNC6(ctrl, hp_slot);

					FUNC13(ctrl);

					/* Wait for SOBS to be unset */
					FUNC15(ctrl);

					FUNC12(&ctrl->crit_sect);
					FUNC14(&p_slot->task_event,
						    pushbutton_helper_thread,
						    0);
					p_slot->hp_slot = hp_slot;
					p_slot->ctrl = ctrl;
/*					p_slot->physical_slot = physical_slot; */
					p_slot->task_event.expires = jiffies + 5 * HZ;   /* 5 second delay */

					FUNC4("add_timer p_slot = %p\n", p_slot);
					FUNC0(&p_slot->task_event);
				}
				/***********POWER FAULT */
				else if (ctrl->event_queue[loop].event_type == INT_POWER_FAULT) {
					FUNC4("power fault\n");
				}

				ctrl->event_queue[loop].event_type = 0;

				change = 1;
			}
		}		/* End of FOR loop */
	}
}