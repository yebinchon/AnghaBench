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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct wl1271 {scalar_t__ cmd_box_addr; scalar_t__* mbox_ptr; scalar_t__ mbox_size; int /*<<< orphan*/ * ptable; TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_BOOT ; 
 int /*<<< orphan*/  DEBUG_MAILBOX ; 
 int /*<<< orphan*/  ECPU_CONTROL_HALT ; 
 int EIO ; 
 int INIT_LOOP ; 
 int /*<<< orphan*/  INIT_LOOP_DELAY ; 
 size_t PART_BOOT ; 
 size_t PART_WORK ; 
 int /*<<< orphan*/  REG_CHIP_ID_B ; 
 int /*<<< orphan*/  REG_COMMAND_MAILBOX_PTR ; 
 int /*<<< orphan*/  REG_EVENT_MAILBOX_PTR ; 
 int /*<<< orphan*/  REG_INTERRUPT_ACK ; 
 int /*<<< orphan*/  REG_INTERRUPT_NO_CLEAR ; 
 scalar_t__ WL1271_ACX_INTR_INIT_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct wl1271*) ; 
 int FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (struct wl1271*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct wl1271*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC9(struct wl1271 *wl)
{
	int loop, ret;
	u32 chip_id, intr;

	/* Make sure we have the boot partition */
	ret = FUNC7(wl, &wl->ptable[PART_BOOT]);
	if (ret < 0)
		return ret;

	ret = FUNC1(wl, ECPU_CONTROL_HALT);
	if (ret < 0)
		return ret;

	ret = FUNC6(wl, REG_CHIP_ID_B, &chip_id);
	if (ret < 0)
		return ret;

	FUNC2(DEBUG_BOOT, "chip id after firmware boot: 0x%x", chip_id);

	if (chip_id != wl->chip.id) {
		FUNC3("chip id doesn't match after firmware boot");
		return -EIO;
	}

	/* wait for init to complete */
	loop = 0;
	while (loop++ < INIT_LOOP) {
		FUNC0(INIT_LOOP_DELAY);
		ret = FUNC6(wl, REG_INTERRUPT_NO_CLEAR, &intr);
		if (ret < 0)
			return ret;

		if (intr == 0xffffffff) {
			FUNC3("error reading hardware complete "
				     "init indication");
			return -EIO;
		}
		/* check that ACX_INTR_INIT_COMPLETE is enabled */
		else if (intr & WL1271_ACX_INTR_INIT_COMPLETE) {
			ret = FUNC8(wl, REG_INTERRUPT_ACK,
					       WL1271_ACX_INTR_INIT_COMPLETE);
			if (ret < 0)
				return ret;
			break;
		}
	}

	if (loop > INIT_LOOP) {
		FUNC3("timeout waiting for the hardware to "
			     "complete initialization");
		return -EIO;
	}

	/* get hardware config command mail box */
	ret = FUNC6(wl, REG_COMMAND_MAILBOX_PTR, &wl->cmd_box_addr);
	if (ret < 0)
		return ret;

	FUNC2(DEBUG_MAILBOX, "cmd_box_addr 0x%x", wl->cmd_box_addr);

	/* get hardware config event mail box */
	ret = FUNC6(wl, REG_EVENT_MAILBOX_PTR, &wl->mbox_ptr[0]);
	if (ret < 0)
		return ret;

	wl->mbox_ptr[1] = wl->mbox_ptr[0] + wl->mbox_size;

	FUNC2(DEBUG_MAILBOX, "MBOX ptrs: 0x%x 0x%x",
		     wl->mbox_ptr[0], wl->mbox_ptr[1]);

	ret = FUNC5(wl);
	if (ret < 0) {
		FUNC3("error getting static data");
		return ret;
	}

	/*
	 * in case of full asynchronous mode the firmware event must be
	 * ready to receive event from the command mailbox
	 */

	/* unmask required mbox events  */
	ret = FUNC4(wl);
	if (ret < 0) {
		FUNC3("EVENT mask setting failed");
		return ret;
	}

	/* set the working partition to its "running" mode offset */
	ret = FUNC7(wl, &wl->ptable[PART_WORK]);

	/* firmware startup completed */
	return ret;
}