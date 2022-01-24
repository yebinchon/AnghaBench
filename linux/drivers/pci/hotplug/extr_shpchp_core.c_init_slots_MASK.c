#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hotplug_slot {int /*<<< orphan*/ * ops; } ;
struct slot {int hp_slot; int number; int /*<<< orphan*/  wq; int /*<<< orphan*/  slot_list; int /*<<< orphan*/  presence_save; int /*<<< orphan*/  latch_save; int /*<<< orphan*/  attention_save; int /*<<< orphan*/  pwr_save; scalar_t__ device; int /*<<< orphan*/  bus; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  hpc_ops; struct controller* ctrl; struct hotplug_slot hotplug_slot; } ;
struct controller {int num_slots; int first_slot; int slot_num_inc; int /*<<< orphan*/  slot_list; TYPE_1__* pci_dev; int /*<<< orphan*/  slot_device_offset; int /*<<< orphan*/  hpc_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;
struct TYPE_4__ {TYPE_2__* subordinate; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SLOT_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hotplug_slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hotplug_slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hotplug_slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hotplug_slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct slot*) ; 
 struct slot* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (struct hotplug_slot*,TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  shpchp_hotplug_slot_ops ; 
 int /*<<< orphan*/  shpchp_queue_pushbutton_work ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC16(struct controller *ctrl)
{
	struct slot *slot;
	struct hotplug_slot *hotplug_slot;
	char name[SLOT_NAME_SIZE];
	int retval;
	int i;

	for (i = 0; i < ctrl->num_slots; i++) {
		slot = FUNC10(sizeof(*slot), GFP_KERNEL);
		if (!slot) {
			retval = -ENOMEM;
			goto error;
		}

		hotplug_slot = &slot->hotplug_slot;

		slot->hp_slot = i;
		slot->ctrl = ctrl;
		slot->bus = ctrl->pci_dev->subordinate->number;
		slot->device = ctrl->slot_device_offset + i;
		slot->hpc_ops = ctrl->hpc_ops;
		slot->number = ctrl->first_slot + (ctrl->slot_num_inc * i);

		slot->wq = FUNC1("shpchp-%d", 0, 0, slot->number);
		if (!slot->wq) {
			retval = -ENOMEM;
			goto error_slot;
		}

		FUNC12(&slot->lock);
		FUNC0(&slot->work, shpchp_queue_pushbutton_work);

		/* register this slot with the hotplug pci core */
		FUNC15(name, SLOT_NAME_SIZE, "%d", slot->number);
		hotplug_slot->ops = &shpchp_hotplug_slot_ops;

		FUNC2(ctrl, "Registering domain:bus:dev=%04x:%02x:%02x hp_slot=%x sun=%x slot_device_offset=%x\n",
			 FUNC13(ctrl->pci_dev->subordinate),
			 slot->bus, slot->device, slot->hp_slot, slot->number,
			 ctrl->slot_device_offset);
		retval = FUNC14(hotplug_slot,
				ctrl->pci_dev->subordinate, slot->device, name);
		if (retval) {
			FUNC3(ctrl, "pci_hp_register failed with error %d\n",
				 retval);
			goto error_slotwq;
		}

		FUNC8(hotplug_slot, &slot->pwr_save);
		FUNC6(hotplug_slot, &slot->attention_save);
		FUNC7(hotplug_slot, &slot->latch_save);
		FUNC5(hotplug_slot, &slot->presence_save);

		FUNC11(&slot->slot_list, &ctrl->slot_list);
	}

	return 0;
error_slotwq:
	FUNC4(slot->wq);
error_slot:
	FUNC9(slot);
error:
	return retval;
}